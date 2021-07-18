extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Traitor! It is you who shall submit to me!\""
	Data["Level"]["Current Scene"]="73"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/74.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
