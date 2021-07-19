extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Behind you calls of the guards draw closer."
	Data["Level"]["Current Scene"]="246"
	Data["Level"]["Options"].append(_NewOption("Scale the side of the building!","res://Games/Ravager/Scenes/247.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Dive over the side gate!","res://Games/Ravager/Scenes/113.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
