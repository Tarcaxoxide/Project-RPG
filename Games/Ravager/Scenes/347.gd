extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Their numbers work against them, here. In the blood-soaked confusion, you are able to slip from the midst of the melee."
	Data["Level"]["Current Scene"]="347"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/348.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
