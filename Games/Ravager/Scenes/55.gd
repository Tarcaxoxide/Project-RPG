extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Eating with a long jaw is more complex than you imagined, and it proves to be a messy process, but a rewarding one."
	Data["Level"]["Current Scene"]="55"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/56.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
