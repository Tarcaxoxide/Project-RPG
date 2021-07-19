extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You reel, feeling the blades pierce your soft scales and into the flesh beneath. Icy cold pain lances through you."
	Data["Level"]["Current Scene"]="234"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/235.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
