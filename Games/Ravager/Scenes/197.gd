extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It extends to more than a foot in length, and when the handmaiden steals a glance downward, a bevy of emotions cross her features before she squeezes her eyes closed once again."
	Data["Level"]["Current Scene"]="197"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/198.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
