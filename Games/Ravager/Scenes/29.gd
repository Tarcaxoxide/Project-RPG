extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"The Draconic Throne has held domain over this kingdom for thousands of years, aided by our bonds with noble creatures such as yourself.\""
	Data["Level"]["Current Scene"]="29"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/30.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
