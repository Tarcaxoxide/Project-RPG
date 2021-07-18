extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="When you are close enough, you drop down into the courtyard. and then you are gone, as suddenly as you came."
	Data["Level"]["Current Scene"]="132"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/133.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
