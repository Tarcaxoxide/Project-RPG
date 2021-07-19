extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He's clearly no hero. While he remains frozen in fear, the way out is clear."
	Data["Level"]["Current Scene"]="267"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/268.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
