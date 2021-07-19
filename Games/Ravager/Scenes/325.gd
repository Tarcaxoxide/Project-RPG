extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She seems to agree - before long, her soft legs begin to squeeze around you."
	Data["Level"]["Current Scene"]="325"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/326.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
