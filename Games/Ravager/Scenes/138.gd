extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You are able to traverse the rest of the ally without incident, until it ends in a sewer grate."
	Data["Level"]["Current Scene"]="138"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/139.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
