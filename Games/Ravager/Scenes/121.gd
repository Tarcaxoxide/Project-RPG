extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="her gaze pans onto you - and past you. Shaking her head groggily, she settles back into her simple bed."
	Data["Level"]["Current Scene"]="121"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/122.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
