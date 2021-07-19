extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The building is made of the same pale stone as the rest of the city, but there are cracks and crevices you can take advantage of."
	Data["Level"]["Current Scene"]="248"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/249.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
