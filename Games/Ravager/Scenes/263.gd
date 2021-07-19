extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It wraps around his ankle, and sends him tumbling to the floor. There's a flash of terror in his eyes, right before his face hits the tiles."
	Data["Level"]["Current Scene"]="263"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/264.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
