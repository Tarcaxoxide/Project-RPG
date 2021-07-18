extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Maëlys:\"I hear you have need of my services.\""
	Data["Level"]["Current Scene"]="148"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/149.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
