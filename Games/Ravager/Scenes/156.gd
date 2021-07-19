extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Maëlys:\"I will have its head for you within the fortnight.\""
	Data["Level"]["Current Scene"]="156"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/157.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
