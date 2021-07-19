extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your tongue seems unfamiliar, and your words become a screech. The woman catches your expression, and strokes the back of your long neck."
	Data["Level"]["Current Scene"]="160"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/161.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
