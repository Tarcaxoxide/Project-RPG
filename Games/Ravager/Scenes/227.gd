extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He makes a fine enough springboard."
	Data["Level"]["Current Scene"]="227"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/97.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
