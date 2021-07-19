extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her fingertips are electric against the tender exterior of your cock, and when she begins to move her palms down it, you cannot help but release a low, bestial growl."
	Data["Level"]["Current Scene"]="200"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/201.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
