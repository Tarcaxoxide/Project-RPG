extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"show him what he is dealing with.\""
	Data["Level"]["Current Scene"]="75"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/wip.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
