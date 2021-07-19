extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"So much for your pet lizard, princess.\""
	Data["Level"]["Current Scene"]="221"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/222.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
