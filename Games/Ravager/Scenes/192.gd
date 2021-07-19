extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She shivers, closing her eyes."
	Data["Level"]["Current Scene"]="192"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/193.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
