extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You do not want to give her time for a second attempt. before she can draw another breath, you're springing up over the edge of the bed."
	Data["Level"]["Current Scene"]="281"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/282.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
