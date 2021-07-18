extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="There are screams behind you, slowly fading into the shroud of night."
	Data["Level"]["Current Scene"]="100"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/101.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
