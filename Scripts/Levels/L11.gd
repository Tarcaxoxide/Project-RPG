extends "res://Scripts/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	Data["Level"]["Current Scene"]="L11"
	Data["Level"]["Options"].append(_NewOption("Continue","res://Scenes/Levels/L12.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
