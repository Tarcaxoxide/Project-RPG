extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You open your eyes. There is little by way of lamplight, but your sight is crystal clear in the darkness."
	Data["Level"]["Current Scene"]="107"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/108.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
