extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She is no longer meeting your gaze, her eyes sliding closed as she relaxes int the fucking you're giving her. You risk taking her a bit harder, a bit faster, as energetic as you can afford."
	Data["Level"]["Current Scene"]="326"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/327.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
