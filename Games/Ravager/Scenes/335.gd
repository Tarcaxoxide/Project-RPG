extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With each burst, a shock of pleasure, better than anything you can remember feeling in your short life, runs through your cock."
	Data["Level"]["Current Scene"]="335"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/336.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
