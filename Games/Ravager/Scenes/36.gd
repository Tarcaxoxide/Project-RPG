extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"A fine name for such a magnificent creature.\""
	Data["Level"]["Current Scene"]="36"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/37.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
