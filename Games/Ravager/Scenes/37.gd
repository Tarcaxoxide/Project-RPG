extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Soon, I will present you to the court. But first I need to make some preparations.\""
	Data["Level"]["Current Scene"]="37"
	Data["Level"]["Options"].append(_NewOption("'I have additional questions.'","res://Games/Ravager/Scenes/168.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Nod.","res://Games/Ravager/Scenes/39.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pose proudly.","res://Games/Ravager/Scenes/38.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
