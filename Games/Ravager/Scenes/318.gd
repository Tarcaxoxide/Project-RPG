extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a pained hiss, you make for an alleyway at the far corner of the courtyard."
	Data["Level"]["Current Scene"]="318"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/134.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
