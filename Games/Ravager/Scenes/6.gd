extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You try to reach out, but you are hemmed in."
	Data["Level"]["Current Scene"]="6"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/7.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
