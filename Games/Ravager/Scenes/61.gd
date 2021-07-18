extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The room is lined with courtiers looking at you, mouths agape. The reek of their mingled perfumes cloys your nostrils."
	Data["Level"]["Current Scene"]="61"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/62.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
