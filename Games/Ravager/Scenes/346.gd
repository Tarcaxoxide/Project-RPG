extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You take a battering, feeling the cold steel lance into your flesh. Fervently, you duck and weave, slashing at the group where you can."
	Data["Level"]["Current Scene"]="346"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/347.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
