extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your weight throws him backwards, and you hook your talons along the seams of his breastplate. He makes a fine enough springboard."
	Data["Level"]["Current Scene"]="96"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/97.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
