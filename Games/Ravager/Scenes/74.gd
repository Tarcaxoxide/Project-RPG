extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)
var uame:String

func _ready():
	uame=str(Get_Stat_Value("PlayerName",Data))
	$Dialog_Output.text="Adeline:\""+uame+",\""
	Data["Level"]["Current Scene"]="74"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/75.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	if(uame == "Null"):
		uame=str(Get_Stat_Value("PlayerName",Data))
	$Dialog_Output.text="Adeline:\""+uame+",\""
	P_process(delta,Data)
