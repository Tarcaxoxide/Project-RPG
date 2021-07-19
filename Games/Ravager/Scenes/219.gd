extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Insertis, pol-\""
	Data["Level"]["Current Scene"]="219"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/220.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
