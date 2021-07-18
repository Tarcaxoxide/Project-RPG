extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Send her in.\""
	Data["Level"]["Current Scene"]="147"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/148.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
