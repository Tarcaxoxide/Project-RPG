extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The princess tears at the guard's grip, just long enough to lock eyes with you."
	Data["Level"]["Current Scene"]="90"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/91.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
