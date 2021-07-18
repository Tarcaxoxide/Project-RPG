extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He hadn't accounted for your strength, however, and as you barrel into him, all that he manages to do is put more meat within reach of your jaw."
	Data["Level"]["Current Scene"]="84"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/85.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
