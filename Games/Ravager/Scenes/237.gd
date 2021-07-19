extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You break into a scrabbling sprint, putting as much distance between you and your pursuers as you can. Your side aches desperately, but you carry on heedless."
	Data["Level"]["Current Scene"]="237"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/238.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
