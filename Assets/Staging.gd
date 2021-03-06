extends Control

var Stage_Data = {
	"Current_Stage":null,
	"Stats":[]
}

export var LevelPath:String

func ClearLevel():
	if (Stage_Data["Current_Stage"] != null):
		Stage_Data["Current_Stage"].queue_free()
		Stage_Data["Current_Stage"]=null

func LoadLevel(Dir:String):
	print("Load:"+Dir)
	ClearLevel()
	var newLevel= load(Dir)
	Stage_Data["Current_Stage"]=newLevel.instance()
	$PlaneOfExistence.add_child(Stage_Data["Current_Stage"])

func _New_Stat(Name:String,Value):
	var nStat:Dictionary = {
		"Name":Name,
		"Value":Value
	}
	return nStat

func _Register_Stat(Name:String,Value):
	var iS:bool=false
	for stat in Stage_Data["Stats"]:
		if (stat["Name"] == Name):
			iS=true
	if(!iS):
		Stage_Data["Stats"].append(_New_Stat(Name,Value))
	print(Name+" Registered with value '"+str(Value)+"'.")
	print("Test Get:"+str(_Get_Stat_Value(Name)))
func _Get_Stat_Value(Name:String):
	for stat in Stage_Data["Stats"]:
		if (stat["Name"] == Name):
			return stat["Value"]
	return null

func _Set_Stat(Name:String,Value):
	for stat in Stage_Data["Stats"]:
		if (stat["Name"] == Name):
			stat["Value"]=Value

func _Get_Stat_Names():
	var val:Array=[]
	for stat in Stage_Data["Stats"]:
		val.append(stat["Name"])
	return val

func P_process(delta,Terminal):
	var termpercent:float=float(Terminal.ShowCounter/100)*float(get_viewport().size.y)
	Terminal.set_size(Vector2(get_viewport().size.x,termpercent))
	
	if(Stage_Data["Current_Stage"].Data["Triggers"]["Get value"]):
		Stage_Data["Current_Stage"].Exchanger["Value"]=_Get_Stat_Value(Stage_Data["Current_Stage"].Exchanger["Name"])
		print("Get Value:"+Stage_Data["Current_Stage"].Exchanger["Name"]+"="+Stage_Data["Current_Stage"].Exchanger["Value"])
		Stage_Data["Current_Stage"].Data["Triggers"]["Get value"]=false
	elif(Stage_Data["Current_Stage"].Data["Triggers"]["Set value"]):
		_Set_Stat(Stage_Data["Current_Stage"].Exchanger["Name"],Stage_Data["Current_Stage"].Exchanger["Value"])
		Stage_Data["Current_Stage"].Data["Triggers"]["Set value"]=false
	
	if(!Terminal.ReturnDone):
		match Terminal.CValue:
			"Load":
				print(Terminal.RValue)
				var scene=LevelPath+Terminal.RValue.front().to_upper()+".tscn"
				LoadLevel(scene)
				Terminal.RValue.clear()
				Terminal.RValue.append("load:"+LevelPath+scene)
				Terminal.ReturnDone=true
			"Reload":
				LoadLevel(LevelPath+Stage_Data["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				Terminal.RValue.append("reload:"+LevelPath+Stage_Data["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				Terminal.ReturnDone=true
			"Exit":
				get_tree().change_scene("res://Wrapper_Main.gd")
				Terminal.ReturnDone=true
			"GetStage":
				Terminal.RValue.append(Stage_Data["Current_Stage"].Data["Level"]["Current Scene"])
				Terminal.ReturnDone=true
			"GetStats":
				Terminal.RValue.append("Status:")
				for stat in _Get_Stat_Names():
					Terminal.RValue.append("       "+stat+":"+str(_Get_Stat_Value(stat)))
				Terminal.ReturnDone=true
	if(Stage_Data["Current_Stage"].Data["Triggers"]["Switch Scene"]):
		Stage_Data["Current_Stage"].Data["Triggers"]["Switch Scene"]=false
		for Nscene in Stage_Data["Current_Stage"].Data["Level"]["Options"]:
			if(Nscene["Real"]):
				if(Nscene["Path"] == Stage_Data["Current_Stage"].Data["Level"]["Next Scene"]):
					LoadLevel(Nscene["Path"])
