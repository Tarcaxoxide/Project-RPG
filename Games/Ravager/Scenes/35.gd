extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)
var uame:String="Null"

func _ready():
	uame=str(Get_Stat_Value("PlayerName",Data))
	$Dialog_Output.text="Adeline:\""+uame+".\""
	Data["Level"]["Current Scene"]="35"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/36.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	if(uame == "Null"):
		uame=str(Get_Stat_Value("PlayerName",Data))
		$Dialog_Output.text="Adeline:\""+uame+".\""
		print()
	P_process(delta,Data)
