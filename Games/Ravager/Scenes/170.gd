extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your attention is drawn to the door latch opening, and a figure enters the room."
	Data["Level"]["Current Scene"]="170"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/171.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
