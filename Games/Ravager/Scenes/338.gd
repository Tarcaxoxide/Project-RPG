extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The night sky is beginning to turn grey, hinting at the dawn to come."
	Data["Level"]["Current Scene"]="338"
	Data["Level"]["Options"].append(_NewOption("Make good your escape.","res://Games/Ravager/Scenes/294.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Kill her.","res://Games/Ravager/Scenes/288.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
