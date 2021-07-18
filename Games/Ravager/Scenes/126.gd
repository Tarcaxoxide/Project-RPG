extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="As your pursuers search the grounds outside, you have the chance to study one another."
	Data["Level"]["Current Scene"]="126"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/127.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
