extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"I... I've never... I'll try, my prince.\""
	Data["Level"]["Current Scene"]="198"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/199.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
