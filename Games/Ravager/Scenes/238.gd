extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="A bell rings out, loud and low, through the night. You see movement ahead of you. Torchlight. The shouting of men."
	Data["Level"]["Current Scene"]="238"
	Data["Level"]["Options"].append(_NewOption("Charge!","res://Games/Ravager/Scenes/239.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Hide!","res://Games/Ravager/Scenes/111.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Return the way you came!","res://Games/Ravager/Scenes/240.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
