extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="As she regathers her composure, she laughs softly."
	Data["Level"]["Current Scene"]="20"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/21.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
