extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You leap, and tuck in your claws."
	Data["Level"]["Current Scene"]="315"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/1.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
