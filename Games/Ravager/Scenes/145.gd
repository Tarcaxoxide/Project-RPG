extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="meanwhile..."
	Data["Level"]["Current Scene"]="145"
	Data["Level"]["Options"].append(_NewOption("WIP","res://Games/Ravager/Scenes/.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
