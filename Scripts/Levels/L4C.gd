extends "res://Scripts/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	Data["Level"]["Current Scene"]="L4C"
	Data["Level"]["Options"].append(_NewOption("Continue","res://Scenes/Levels/L4D.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
