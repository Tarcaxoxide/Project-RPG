extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Just what I thought. Gather yourself a hunting party, and search the kingdom. Do not rest until it is slain.\""
	Data["Level"]["Current Scene"]="155"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/156.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
