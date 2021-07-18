extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"The days of your bloodline's tyranny are long over. I'm sorry that the news has not reached you.\""
	Data["Level"]["Current Scene"]="69"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/70.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
