extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Commoner:\"Wh-whuh? Who is it?\""
	Data["Level"]["Current Scene"]="118"
	Data["Level"]["Options"].append(_NewOption("Pounce on her.","res://Games/Ravager/Scenes/278.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Leap back out the window.","res://Games/Ravager/Scenes/343.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Freeze in place.","res://Games/Ravager/Scenes/119.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
