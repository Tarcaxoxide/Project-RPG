extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You advance, step by step, until he is pinned against the wall."
	Data["Level"]["Current Scene"]="274"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/275.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
