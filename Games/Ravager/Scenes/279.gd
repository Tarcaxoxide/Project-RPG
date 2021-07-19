extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Then you hear a floorboard creak underfoot."
	Data["Level"]["Current Scene"]="279"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/280.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
