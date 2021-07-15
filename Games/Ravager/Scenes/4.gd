extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The singing continues. it seems familiar, somehow, soothing."
	Data["Level"]["Current Scene"]="4"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/5.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
