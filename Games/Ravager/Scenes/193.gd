extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"I'll do my best to please you.\""
	Data["Level"]["Current Scene"]="193"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/194.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
