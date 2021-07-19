extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="A wet crunch, and he falls silent."
	Data["Level"]["Current Scene"]="259"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/260.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
