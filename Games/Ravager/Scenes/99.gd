extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="And then the wind catches beneath your wings."
	Data["Level"]["Current Scene"]="99"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/100.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
