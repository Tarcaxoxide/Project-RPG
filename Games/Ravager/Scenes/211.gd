extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Eventually, you are spent, and she chokes down her mouthful. Her face, hair, and chest are drenched."
	Data["Level"]["Current Scene"]="211"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/212.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
