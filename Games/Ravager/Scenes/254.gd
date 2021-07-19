extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="They retreat the way they came, leaving the ruined gate on its hinges. Doesn't look like they wanted to find you after all."
	Data["Level"]["Current Scene"]="254"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/255.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
