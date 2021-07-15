extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The woman smiles warmly at you. There is no fear in her features, nor in her scent."
	Data["Level"]["Current Scene"]="13"
	Data["Level"]["Options"].append(_NewOption("\"Who are you?\".","res://Games/Ravager/Scenes/159.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("\"How did i get here?\".","res://Games/Ravager/Scenes/159.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Bite her.","res://Games/Ravager/Scenes/22.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Bite her.","res://Games/Ravager/Scenes/14.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
