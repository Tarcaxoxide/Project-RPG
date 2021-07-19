extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You're taking her with such vigor the cheap wood of the bedframe splinters, cracks, and finally breaks beneath you, but you don't even break rhythm."
	Data["Level"]["Current Scene"]="0"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/301.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
