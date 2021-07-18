extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It is easy enough to hook a talon through it, and you disappear inside."
	Data["Level"]["Current Scene"]="139"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/140.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
