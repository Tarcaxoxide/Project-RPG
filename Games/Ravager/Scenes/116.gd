extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You slip through a window, and emerge into a darkened room. It smells well lived in, and you catch the scent of someone sleeping in the corner."
	Data["Level"]["Current Scene"]="116"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/117.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
