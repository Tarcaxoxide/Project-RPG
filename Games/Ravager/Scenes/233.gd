extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Then a shield barge sends you sideways, and you feel cold steel penetrate your scales. The soldiers have managed to circle you, it seems. Their blades come down."
	Data["Level"]["Current Scene"]="233"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/234.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
