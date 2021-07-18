extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Princess! So good of you to cme out of hiding. And you've brought yourself a pet. Wherever did you find it?\""
	Data["Level"]["Current Scene"]="63"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/64.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
