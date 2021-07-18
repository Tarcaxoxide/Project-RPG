extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You race down the alley, and the commotion fades ever further away from you."
	Data["Level"]["Current Scene"]="134"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/135.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
