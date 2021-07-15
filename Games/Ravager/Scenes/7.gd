extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You Struggle, and feel the tips of your fingers catch against the barrier that surrounds you."
	Data["Level"]["Current Scene"]="7"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/8.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
