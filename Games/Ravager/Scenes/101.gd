extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Beneath you is the city, a honeycomb of white stone buildings turned a ghostly blue by the moonlight."
	Data["Level"]["Current Scene"]="0"
	#Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/1.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
