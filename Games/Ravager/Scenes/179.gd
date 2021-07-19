extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a derisive snort, you turn your attentions from her and look instead to the food. It has scattered across the floor, but the smell is still appealing."
	Data["Level"]["Current Scene"]="179"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/180.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
