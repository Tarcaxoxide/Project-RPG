extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Now, what shall i call you?\""
	Data["Level"]["Current Scene"]="33"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/34.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
