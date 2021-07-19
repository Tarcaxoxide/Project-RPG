extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Arching your neck around, you see many more guards, Drawn to the commotion. Perhaps discretion would have been a better idea, you think, before the next blades fall."
	Data["Level"]["Current Scene"]="276"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/277.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
