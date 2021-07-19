extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She shuffles slightly, loosing her hands from her sleeves."
	Data["Level"]["Current Scene"]="194"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/195.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
