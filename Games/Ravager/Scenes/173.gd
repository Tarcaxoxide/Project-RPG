extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She seems too terrified to even scream. You feel a fire flood through you."
	Data["Level"]["Current Scene"]="173"
	Data["Level"]["Options"].append(_NewOption("Tear at her clothes.","res://Games/Ravager/Scenes/174.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Leave her be and return to your food.","res://Games/Ravager/Scenes/174.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
