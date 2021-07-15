extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She smells of turmeric and pine, and is familiar in a way you cannot place. You do not know who you are, or why you have names for all these things."
	Data["Level"]["Current Scene"]="12"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/13.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
