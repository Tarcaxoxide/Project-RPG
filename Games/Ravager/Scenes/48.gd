extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The handmaid is lightly built, with wavy dark hair pulled back into tails. She carries a platter of raw red meat. Its rich smell wafts into the room."
	Data["Level"]["Current Scene"]="48"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/49.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
