extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She speaks words unfamiliar to you, and your limbs seize. You are forced back, no longer in control of your own body."
	Data["Level"]["Current Scene"]="19"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/20.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
