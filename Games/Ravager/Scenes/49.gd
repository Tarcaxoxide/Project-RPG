extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She startles at the sight of you atop your pile of underclothes, but her features quickly settle back into a determined smile."
	Data["Level"]["Current Scene"]="49"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/50.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
