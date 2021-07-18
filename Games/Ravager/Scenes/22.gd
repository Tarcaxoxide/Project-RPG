extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You lash out, snapping your jaw around her arm."
	Data["Level"]["Current Scene"]="22"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/23.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
