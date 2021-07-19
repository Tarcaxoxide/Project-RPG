extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You let loose a roar that hammers through the chamber. The courtiers cover their ears, and throw themselves back against the walls."
	Data["Level"]["Current Scene"]="213"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/214.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
