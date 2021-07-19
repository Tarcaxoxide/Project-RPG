extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"I'm sorry, this must all be very new to you. You'll learn quickly, though, I'm sure.\""
	Data["Level"]["Current Scene"]="161"
	Data["Level"]["Options"].append(_NewOption("Give up and nestle closer.","res://Games/Ravager/Scenes/14.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Bite her.","res://Games/Ravager/Scenes/22.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
