extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You spring, claws scraping against the marble floor, and launch yourself at the Regent."
	Data["Level"]["Current Scene"]="82"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/83.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
