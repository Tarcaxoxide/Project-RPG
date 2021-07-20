extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="As soon as you are free, you leap into a sprint - down a nearby alleyway, and to freedom."
	Data["Level"]["Current Scene"]="348"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/134.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
