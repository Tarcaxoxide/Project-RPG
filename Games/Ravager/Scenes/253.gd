extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="First Guard:\"Fuck this. I'm not getting killed for five silver a month.\""
	Data["Level"]["Current Scene"]="253"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/254.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
