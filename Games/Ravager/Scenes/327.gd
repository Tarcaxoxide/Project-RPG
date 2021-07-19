extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her eyes snap open in shock, her muffled moans getting louder, then slowly shut, but only halfway this time. heavy with desire and clouded by lust."
	Data["Level"]["Current Scene"]="327"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/328.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
