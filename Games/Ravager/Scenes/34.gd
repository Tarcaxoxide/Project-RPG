extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)
var uame:String="Null"

func _ready():
	uame=str(Get_Stat_Value("PlayerName",Data))
	$Dialog_Output.text="Please select a name."
	Data["Level"]["Current Scene"]="34"
	Data["Level"]["Options"].append(_NewOption("{Text Field}","res://Games/Ravager/Scenes/WIP.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/35.tscn",$Selection))
	_prep_ready(Data)
	

func _process(delta):
	if(uame == "Null"):
		uame=str(Get_Stat_Value("PlayerName",Data))
		$Dialog_Output.text="Please select a name."
		$Selection/OptionButtons/TextField.text=uame
	P_process(delta,Data)
