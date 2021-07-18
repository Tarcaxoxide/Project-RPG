extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You wonder how you must seem to her, a creature stepped out of nightmare and into her room."
	Data["Level"]["Current Scene"]="128"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/129.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
