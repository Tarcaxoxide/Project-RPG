extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Several score her flesh. She screams, Flailing wildly, freeing you from the tight grip of her cunt."
	Data["Level"]["Current Scene"]="312"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/313.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
