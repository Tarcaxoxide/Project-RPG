extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="His partner glances over with horror."
	Data["Level"]["Current Scene"]="260"
	Data["Level"]["Options"].append(_NewOption("Make good your escape.","res://Games/Ravager/Scenes/270.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Toy with them.","res://Games/Ravager/Scenes/271.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
