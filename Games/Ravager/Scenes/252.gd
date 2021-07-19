extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="you hear a few stepts, as the guards pace back and forth."
	Data["Level"]["Current Scene"]="252"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/253.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
