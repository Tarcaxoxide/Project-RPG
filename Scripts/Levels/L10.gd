extends "res://Scripts/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	Data["Level"]["Current Scene"]="L10"
	Data["Level"]["Options"].append(_NewOption("Continue","res://Scenes/Levels/L11.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
