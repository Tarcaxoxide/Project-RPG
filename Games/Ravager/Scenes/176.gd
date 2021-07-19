extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"Oh no, oh nonono.\""
	Data["Level"]["Current Scene"]="176"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/177.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
