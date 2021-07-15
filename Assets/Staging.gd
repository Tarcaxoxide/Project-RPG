extends Control

var Data = {
	"Current_Stage":null,
	"Stats":[]
}

func ClearLevel():
	if (Data["Current_Stage"] != null):
		Data["Current_Stage"].queue_free()
		Data["Current_Stage"]=null

func LoadLevel(Dir:String):
	ClearLevel()
	var newLevel= load(Dir)
	Data["Current_Stage"]=newLevel.instance()
	$PlaneOfExistence.add_child(Data["Current_Stage"])

func _New_Stat(Name:String,Value):
	var nStat:Dictionary = {
		"Name":Name,
		"Value":Value
	}
	return nStat

func _Register_Stat(Name:String,Value):
	var iS:bool=false
	for stat in Data["Stats"]:
		if (stat["Name"] == Name):
			iS=true
	if(!iS):
		Data["Stats"].append(_New_Stat(Name,Value))

func _Get_Stat_Value(Name:String):
	for stat in Data["Stats"]:
		if (stat["Name"] == Name):
			return stat["Value"]
	return null

func _Set_Stat(Name:String,Value):
	for stat in Data["Stats"]:
		if (stat["Name"] == Name):
			stat["Value"]=Value

func _Get_Stat_Names():
	var val:Array=[]
	for stat in Data["Stats"]:
		val.append(stat["Name"])
	return val
