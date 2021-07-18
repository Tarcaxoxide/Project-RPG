extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"Another time, little beast. I may favour you as I please, once we are wed.\""
	Data["Level"]["Current Scene"]="21"
	Data["Level"]["Options"].append(_NewOption("Bite her.","res://Games/Ravager/Scenes/22.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Growl.","res://Games/Ravager/Scenes/163.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pout.","res://Games/Ravager/Scenes/164.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
