extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Those days are ended. With you, my birthright has been restored.\""
	Data["Level"]["Current Scene"]="31"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/32.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
