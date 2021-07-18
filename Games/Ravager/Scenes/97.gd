extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your next jump takes you through the window, and over a precipice."
	Data["Level"]["Current Scene"]="97"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/98.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
