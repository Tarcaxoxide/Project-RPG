extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You nestle closer against the woman. She is of similar size to you, but she accommodates you well within her embrace."
	Data["Level"]["Current Scene"]="14"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/15.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
