extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The bedchambers is richly appointed. The furnishings are of polished hardwood, and decorated with velvet and silks."
	Data["Level"]["Current Scene"]="41"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/42.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
