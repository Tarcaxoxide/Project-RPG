extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"Come out, little one.\""
	Data["Level"]["Current Scene"]="5"
	Data["Level"]["Options"].append(_NewOption("Reach out.","res://Games/Ravager/Scenes/6.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
