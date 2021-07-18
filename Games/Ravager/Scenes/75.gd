extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"show him what he is dealing with.\""
	Data["Level"]["Current Scene"]="75"
	Data["Level"]["Options"].append(_NewOption("Roar at him.","res://Games/Ravager/Scenes/213.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pretend to join him.","res://Games/Ravager/Scenes/76.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Stay quiet.","res://Games/Ravager/Scenes/217.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
