extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He trips, and you draw your coils inward."
	Data["Level"]["Current Scene"]="258"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/259.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
