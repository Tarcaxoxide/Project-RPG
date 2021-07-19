extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She struggles, wide eyed - but you have the advantage of four strong limbs, and your weight pressing down on her."
	Data["Level"]["Current Scene"]="283"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/284.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
