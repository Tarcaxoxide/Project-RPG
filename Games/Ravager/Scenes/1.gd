extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Heat."
	Data["Level"]["Current Scene"]="1"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/2.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
