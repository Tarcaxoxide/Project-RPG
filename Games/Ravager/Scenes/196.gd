extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The flesh of your cock is a purpled red, with an angled tip. It extends and hardens quickly, revealing pronounced ridges and contours."
	Data["Level"]["Current Scene"]="196"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/197.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
