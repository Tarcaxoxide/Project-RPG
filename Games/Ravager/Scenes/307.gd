extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Extracting yourself in timely fashion proves too awkward, and they are upon you."
	Data["Level"]["Current Scene"]="307"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/308.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
