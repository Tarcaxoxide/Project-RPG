extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can see the princess being hauled bodily back through the chamber doors, soldiers on all sides."
	Data["Level"]["Current Scene"]="224"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/225.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
