extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She inches forward with the plate. while she maintains her composure, your senses pick up the telltale scent of fear."
	Data["Level"]["Current Scene"]="51"
	Data["Level"]["Options"].append(_NewOption("Lunge for her.","res://Games/Ravager/Scenes/172.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Look at your food.","res://Games/Ravager/Scenes/52.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
