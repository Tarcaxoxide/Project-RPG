extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Putting the epithet aside, you decide to concentrate on more pressing matters."
	Data["Level"]["Current Scene"]="54"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/55.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
