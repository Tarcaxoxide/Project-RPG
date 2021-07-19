extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Seeing your opening, you do not hesitate. You launch into a sprint away from the mass of men, and back the way you came."
	Data["Level"]["Current Scene"]="244"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/111.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
