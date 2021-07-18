extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"I have a quest for you, of utmost importance. It appears we have a dragon on the loose.\""
	Data["Level"]["Current Scene"]="151"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/152.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
