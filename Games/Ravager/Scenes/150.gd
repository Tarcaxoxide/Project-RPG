extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Never mind about that!\""
	Data["Level"]["Current Scene"]="150"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/151.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
