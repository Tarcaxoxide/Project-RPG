extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"Fearsome aren't you? Don't worry I'll make sure your needs are taken care of.\""
	Data["Level"]["Current Scene"]="163"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/28.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
