extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="By the time you are done, she and the bed are so covered in cum that she is almost invisible against the ruined bedding."
	Data["Level"]["Current Scene"]="336"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/337.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
