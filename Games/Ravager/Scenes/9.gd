extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You are in a vast, richly decorated chamber."
	Data["Level"]["Current Scene"]="9"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/10.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
