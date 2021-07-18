extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Herald:\"Your Grace? The Huntress has answered your summons.\""
	Data["Level"]["Current Scene"]="146"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/147.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
