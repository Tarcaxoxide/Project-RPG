extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You glance around you. The streets is lined by dour white stone buildings on both sides. You sprint to the closest one to you."
	Data["Level"]["Current Scene"]="111"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/112.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
