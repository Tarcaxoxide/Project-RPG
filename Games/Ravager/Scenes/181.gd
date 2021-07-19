extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The door swings open. The princess has returned. She casts a long glance across the room."
	Data["Level"]["Current Scene"]="181"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/182.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
