extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"You will make a fine king, Ted.\""
	Data["Level"]["Current Scene"]="38"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/39.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
