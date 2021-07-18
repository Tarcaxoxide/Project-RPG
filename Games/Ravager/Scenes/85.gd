extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You snap your jaw closed around this wrist, and his codpiece. Blood floods into your mouth."
	Data["Level"]["Current Scene"]="85"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/86.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
