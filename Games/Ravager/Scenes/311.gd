extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="There's nothing for it. You twist your body, writhing like a serpent. The motion switches your places, putting her above you, in the way of the coming blades."
	Data["Level"]["Current Scene"]="311"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/312.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
