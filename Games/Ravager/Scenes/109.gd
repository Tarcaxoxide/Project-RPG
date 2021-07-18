extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can hear shouting in the distance behind you, and the clattering of steel. A quick look behind you backwards confirms your suspicions - torches dance in the dark."
	Data["Level"]["Current Scene"]="109"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/110.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
