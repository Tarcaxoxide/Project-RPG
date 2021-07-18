extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The princess leaves, and you are alone in the bedchamber."
	Data["Level"]["Current Scene"]="40"
	Data["Level"]["Options"].append(_NewOption("Look around.","res://Games/Ravager/Scenes/41.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Create a nest.","res://Games/Ravager/Scenes/43.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Have a nap.","res://Games/Ravager/Scenes/169.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
