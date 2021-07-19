extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Then there is a flash of pain in your back, and you are thrown to the ground."
	Data["Level"]["Current Scene"]="275"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/276.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
