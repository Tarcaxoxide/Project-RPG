extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You cast a long glance between the two and then, with a shrug of your foreshoulders, stalk casually across the hall."
	Data["Level"]["Current Scene"]="76"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/77.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
