extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You snap your jaw around her shoulder, but do not press in to her flesh. The implicit threat seems to work, and she grows still in terror."
	Data["Level"]["Current Scene"]="285"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/286.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
