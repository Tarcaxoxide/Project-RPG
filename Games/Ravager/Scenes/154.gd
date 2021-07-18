extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Maëlys:\"Not at all, regent. It will not be the first I've slain.\""
	Data["Level"]["Current Scene"]="154"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/155.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
