extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	var uame:String=Get_Stat_Value("PlayerName",Data)
	$Dialog_Output.text="Adeline:\"Ted,\""
	Data["Level"]["Current Scene"]="74"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/75.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
