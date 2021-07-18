extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It has a front door, which appears bolted, and unshuttered windows higher up. The alley behind it is blocked by a side-gate."
	Data["Level"]["Current Scene"]="112"
	Data["Level"]["Options"].append(_NewOption("Smash open the front door!","res://Games/Ravager/Scenes/245.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Scale the side of the building!","res://Games/Ravager/Scenes/247.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Dive over the side-gate!","res://Games/Ravager/Scenes/113.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
