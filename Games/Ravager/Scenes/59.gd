extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Soon you arrive at the entrance of a vast chamber."
	Data["Level"]["Current Scene"]="59"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/60.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
