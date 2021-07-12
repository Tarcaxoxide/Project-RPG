extends "res://Scripts/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	Data["Level"]["Current Scene"]="L4D"
	Data["Level"]["Options"].append(_NewOption("Reach out.","res://Scenes/Levels/L5.tscn",$Selection))
	_prep_ready(Data)
	$Selection.visible=true

func _process(delta):
	P_process(delta,Data)
