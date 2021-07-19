extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It splashes across her face, sealing one eye closed. Her head pulls back in surprise, just in time to be hit with the next torrent."
	Data["Level"]["Current Scene"]="208"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/209.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
