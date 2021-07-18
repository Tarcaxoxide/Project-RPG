extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You only have a few moments to appreciate the view, before you feel a crossbow bolt embed itself in your side."
	Data["Level"]["Current Scene"]="103"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/104.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
