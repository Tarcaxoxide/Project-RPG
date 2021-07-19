extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"W-wow. I... I didn't know.\""
	Data["Level"]["Current Scene"]="212"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/181.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
