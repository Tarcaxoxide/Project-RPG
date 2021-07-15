extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She runs her fingers across your scales. Her skin is soft, and its intoxicating heat brings warmth to your own."
	Data["Level"]["Current Scene"]="16"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/17.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
