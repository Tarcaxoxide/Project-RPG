extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You spring forward, claws scraping against the marble floor, and launch yourself at him. Hooking your jaw around his arm, you twist your head with a savage wrench."
	Data["Level"]["Current Scene"]="228"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/229.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
