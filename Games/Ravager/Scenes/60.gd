extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Herald:\"Princess adeline, and... escort!\""
	Data["Level"]["Current Scene"]="60"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/61.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
