extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Initially your eye is drawn to the golden glint of the candelabras, but your nose leads you elsewhere."
	Data["Level"]["Current Scene"]="45"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/46.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
