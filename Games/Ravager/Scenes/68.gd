extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"My dear princess, the succession of your line ended with the loss of its last dragon. Do you think it was any accident that no more could be found?\""
	Data["Level"]["Current Scene"]="68"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/69.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
