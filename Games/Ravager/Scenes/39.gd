extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Rest, and I will return soon.\""
	Data["Level"]["Current Scene"]="39"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/40.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
