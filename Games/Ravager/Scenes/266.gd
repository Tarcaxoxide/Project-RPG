extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Second Guard:\"By the sun!\""
	Data["Level"]["Current Scene"]="266"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/267.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
