extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"Does this please you?\""
	Data["Level"]["Current Scene"]="201"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/202.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
