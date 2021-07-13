extends Control

var Data = {
	"World":{
		"Level":0,
		"Current_Stage":null
	},
	"Character":{
		"Health":3,
		"Strength":0,
		"Charm":0,
		"Potency":0,
		"Cruelty":0,
		"Mercy":0
	},
	
}

var xcount:int = 0

func ClearLevel():
	if (Data["World"]["Current_Stage"] != null):
		Data["World"]["Current_Stage"].queue_free()
		Data["World"]["Current_Stage"]=null

func LoadLevel(Dir:String):
	ClearLevel()
	var newLevel= load(Dir)
	Data["World"]["Current_Stage"]=newLevel.instance()
	$PlaneOfExistence.add_child(Data["World"]["Current_Stage"])
	

func _ready():
	LoadLevel("res://Scenes/Levels/_0000000000_0000000000_0000000000.tscn")

func _process(delta):
	var termpercent:float=float($Terminal.ShowCounter/100)*float(get_viewport().size.y)
	$Terminal.set_size(Vector2(get_viewport().size.x,termpercent))
	
	if(!$Terminal.ReturnDone):
		match $Terminal.CValue:
			"Load":
				print($Terminal.RValue)
				var scene="res://Scenes/Levels/"+$Terminal.RValue.front().to_upper()+".tscn"
				LoadLevel(scene)
				$Terminal.RValue.clear()
				$Terminal.RValue.append("load:"+"res://Scenes/Levels/"+scene)
				$Terminal.ReturnDone=true
			"Reload":
				LoadLevel("res://Scenes/Levels/"+Data["World"]["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				$Terminal.RValue.append("reload:"+"res://Scenes/Levels/"+Data["World"]["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				$Terminal.ReturnDone=true
			"Exit":
				get_tree().change_scene("res://Scenes/Menu.tscn")
				$Terminal.ReturnDone=true
			"GetStage":
				$Terminal.RValue.append(Data["World"]["Current_Stage"].Data["Level"]["Current Scene"])
				$Terminal.ReturnDone=true
			"GetCharacter":
				$Terminal.RValue.append("Player Character Status:")
				$Terminal.RValue.append("       Health:"+str(Data["Character"]["Health"]))
				$Terminal.RValue.append("       Strength:"+str(Data["Character"]["Strength"]))
				$Terminal.RValue.append("       Charm:"+str(Data["Character"]["Charm"]))
				$Terminal.RValue.append("       Potency:"+str(Data["Character"]["Potency"]))
				$Terminal.RValue.append("       Cruelty:"+str(Data["Character"]["Cruelty"]))
				$Terminal.RValue.append("       Mercy:"+str(Data["Character"]["Mercy"]))
				$Terminal.ReturnDone=true
		
	
	if(Data["World"]["Current_Stage"].Data["Triggers"]["Switch Scene"]):
		Data["World"]["Current_Stage"].Data["Triggers"]["Switch Scene"]=false
		xcount+=1
		for Nscene in Data["World"]["Current_Stage"].Data["Level"]["Options"]:
			if(Nscene["Real"]):
				if(Nscene["Path"] == Data["World"]["Current_Stage"].Data["Level"]["Next Scene"]):
					LoadLevel(Nscene["Path"])
