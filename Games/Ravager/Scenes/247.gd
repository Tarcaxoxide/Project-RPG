extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You glance up. There is an open window there, if you can reach that far."
	Data["Level"]["Current Scene"]="247"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/248.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
