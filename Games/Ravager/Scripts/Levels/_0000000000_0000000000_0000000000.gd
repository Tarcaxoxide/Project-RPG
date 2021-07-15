extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)


func _ready():
	Data["Level"]["Current Scene"]="_0000000000_0000000000_0000000000"
	Data["Level"]["Options"].append(_NewOption("Continue","res://Games/Ravager/Scenes/Levels/_0000000000_0000000000_0000000001.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
