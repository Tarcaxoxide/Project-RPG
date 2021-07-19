extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You ease your claw from her mouth. Frozen in fear, she does not scream."
	Data["Level"]["Current Scene"]="294"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/131.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
