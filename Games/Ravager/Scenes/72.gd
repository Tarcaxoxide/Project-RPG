extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Surrender your little pet, and we will talk no more of this.\""
	Data["Level"]["Current Scene"]="72"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/73.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
