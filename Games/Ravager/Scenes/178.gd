extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"Y-you can't do that! It's forbidden!\""
	Data["Level"]["Current Scene"]="178"
	Data["Level"]["Options"].append(_NewOption("Roar in her face.","res://Games/Ravager/Scenes/190.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Lose interest.","res://Games/Ravager/Scenes/188.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pause and tilt your head.","res://Games/Ravager/Scenes/179.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
