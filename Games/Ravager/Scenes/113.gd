extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You scrabble over the gate, and land in a small courtyard."
	Data["Level"]["Current Scene"]="113"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/114.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
