extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"H-hey there, little creature.\""
	Data["Level"]["Current Scene"]="53"
	Data["Level"]["Options"].append(_NewOption("Now strike!","res://Games/Ravager/Scenes/172.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Accept the food gladly.","res://Games/Ravager/Scenes/54.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
