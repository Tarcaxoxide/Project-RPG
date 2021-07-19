extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Eating with a long jaw is more complex than you imaged, and it proves to be a messy process, but a rewarding one. As you eat, you can hear a muted sobbing behind you."
	Data["Level"]["Current Scene"]="180"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/181.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
