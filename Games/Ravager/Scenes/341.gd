extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It feels incredible, like nothing you'd ever experienced... yet somehow , as pulse after pulse of pleasure ripples through your body, you almost recognize it."
	Data["Level"]["Current Scene"]="341"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/342.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
