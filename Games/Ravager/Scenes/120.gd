extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She rubs her eyes, blearily, and looks around the room."
	Data["Level"]["Current Scene"]="120"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/121.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
