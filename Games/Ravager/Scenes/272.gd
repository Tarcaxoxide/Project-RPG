extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="His eyes go wide and he drops the halberd from his hands."
	Data["Level"]["Current Scene"]="272"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/273.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
