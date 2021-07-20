extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="As you land back onto the flagstones, it's clear that you're not alone."
	Data["Level"]["Current Scene"]="344"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/345.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
