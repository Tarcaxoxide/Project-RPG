extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="A movement to one side startles you - a scruffily dressed man jumps out, knife glinting in the moonlight."
	Data["Level"]["Current Scene"]="135"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/136.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
