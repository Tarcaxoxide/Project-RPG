extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"I suppose I should introduce myself. I am Princess Adeline, last of my line.\""
	Data["Level"]["Current Scene"]="28"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/29.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
