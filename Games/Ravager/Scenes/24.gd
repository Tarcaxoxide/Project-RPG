extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Recovering from the shock, she speaks a strange tongue, and you freeze in place. You feel yourself withdraw, unbidden."
	Data["Level"]["Current Scene"]="24"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/25.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
