extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Swallowing your distaste, you continue. It's not long before you find a sidechamber, away from the main flow. Here, you will be able to rest a while."
	Data["Level"]["Current Scene"]="143"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/144.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
