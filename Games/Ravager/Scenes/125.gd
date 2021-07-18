extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Whether through raw fear or some more sensible instinct of preservation, she remains still. The moments lengthens."
	Data["Level"]["Current Scene"]="125"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/126.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
