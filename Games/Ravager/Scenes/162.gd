extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You bite back the urge, and settle in front of her. She graces you with another smile."
	Data["Level"]["Current Scene"]="162"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/28.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
