extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You lie there in silence, picking at your opportune meal, as the commotion slowly dies down outside."
	Data["Level"]["Current Scene"]="291"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/292.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
