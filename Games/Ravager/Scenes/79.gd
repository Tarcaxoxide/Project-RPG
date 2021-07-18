extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The regent is quick to find amusement at the apparent change of fortune."
	Data["Level"]["Current Scene"]="79"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/80.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
