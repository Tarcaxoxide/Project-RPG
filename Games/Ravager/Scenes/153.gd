extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"A dragon. That won't be a problem for you, will it Maëlys?\""
	Data["Level"]["Current Scene"]="153"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/154.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
