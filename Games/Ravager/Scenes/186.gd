extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"You'll learn soon enough, or Ted here will tech you.\""
	Data["Level"]["Current Scene"]="186"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/187.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
