extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You have emerged from an egg, and into the waiting arms of a woman. Her song, it seems, is the one that drew you here."
	Data["Level"]["Current Scene"]="11"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/12.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
