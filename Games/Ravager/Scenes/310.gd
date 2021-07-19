extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She cames back to reality shrieking in terror and horror."
	Data["Level"]["Current Scene"]="310"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/311.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
