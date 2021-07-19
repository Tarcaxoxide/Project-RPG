extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The tension slowly fades from her. Perhaps she is overwhelmed by sensation, perhaps she understands that there is nothing else she can do."
	Data["Level"]["Current Scene"]="323"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/324.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
