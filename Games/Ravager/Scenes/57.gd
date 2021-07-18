extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Enjoyed yourself, Ted? You've manners befitting a prince. Come, let's give them a proper showing.\""
	Data["Level"]["Current Scene"]="57"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/58.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
