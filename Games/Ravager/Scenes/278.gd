extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You move fast, and low, closing the distance between you both."
	Data["Level"]["Current Scene"]="278"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/279.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
