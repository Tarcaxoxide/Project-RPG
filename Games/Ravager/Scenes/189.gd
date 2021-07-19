extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"Y-you're betrothed... to the princess. I'm not allowed t-to...\""
	Data["Level"]["Current Scene"]="189"
	Data["Level"]["Options"].append(_NewOption("Motivate her.","res://Games/Ravager/Scenes/190.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Stare expectantly.","res://Games/Ravager/Scenes/191.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
