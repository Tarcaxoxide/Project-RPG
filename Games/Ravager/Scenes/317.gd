extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You hear shouting behind you. You don't feel like lingering much longer - you were lucky to get away with this much."
	Data["Level"]["Current Scene"]="317"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/318.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
