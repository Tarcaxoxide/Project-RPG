extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He laughs, brushing a crease from his jerkin."
	Data["Level"]["Current Scene"]="67"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/68.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
