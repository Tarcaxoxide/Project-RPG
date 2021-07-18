extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Please select a name."
	Data["Level"]["Current Scene"]="34"
	Data["Level"]["Options"].append(_NewOption("{Text Field}","res://Games/Ravager/Scenes/WIP.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/35.tscn",$Selection))
	Set_Stat_Value("PlayerName","Dragon",Data)
	_prep_ready(Data)

func _process(delta):
	if($Selection/OptionButtons/TextField.text == "TextField"):
		$Selection/OptionButtons/TextField.text=str(Get_Stat_Value("PlayerName",Data))
	P_process(delta,Data)
