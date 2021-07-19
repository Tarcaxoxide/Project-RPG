extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She presses her hands on your belly, pushing you back."
	Data["Level"]["Current Scene"]="177"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/178.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
