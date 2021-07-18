extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Too late, he realises what you're about to do, and brings his arm down to intercept you."
	Data["Level"]["Current Scene"]="83"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/84.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
