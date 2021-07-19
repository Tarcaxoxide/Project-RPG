extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She pants heavily, catching her breath."
	Data["Level"]["Current Scene"]="188"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/189.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
