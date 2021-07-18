extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="In front of you, on the throne, is a wiry man of middle years. If he is perturbed, he does not show it."
	Data["Level"]["Current Scene"]="62"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/63.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
