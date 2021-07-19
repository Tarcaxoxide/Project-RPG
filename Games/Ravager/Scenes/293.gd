extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Casting a glance in either direction, you launch into a run down a nearby alleyway."
	Data["Level"]["Current Scene"]="293"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/134.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
