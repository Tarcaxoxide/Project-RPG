extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It's all the chance you need. You slip out from underneath crashing through the bedframe and sprinting for the window."
	Data["Level"]["Current Scene"]="314"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/315.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
