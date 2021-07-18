extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"You're a fearsome thing, aren't you? That will serve us well in the future.\""
	Data["Level"]["Current Scene"]="27"
	Data["Level"]["Options"].append(_NewOption("Spit fire in her face.","res://Games/Ravager/Scenes/165.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Look quizzically at her.","res://Games/Ravager/Scenes/28.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pout.","res://Games/Ravager/Scenes/28.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
