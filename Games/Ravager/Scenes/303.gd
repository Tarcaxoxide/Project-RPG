extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She is no longer meeting your gaze, her eyes glazed over - with pain or pleasure, you don't care."
	Data["Level"]["Current Scene"]="303"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/304.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
