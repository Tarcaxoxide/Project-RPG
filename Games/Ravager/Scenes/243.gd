extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Finally, driven by fury and desperation, your claws catch on one of the weapons assaulting you. With a sharp crack, it splits in two."
	Data["Level"]["Current Scene"]="243"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/244.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
