extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Again and again, gouts of your cum soak her, far more than she was prepared for. Beneath you, with her mouth full and eyes closed, there is little she can do but bear it."
	Data["Level"]["Current Scene"]="210"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/211.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
