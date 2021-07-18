extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Keeping one eye on her, you turn about - each inch of movement slow and sure."
	Data["Level"]["Current Scene"]="131"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/132.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
