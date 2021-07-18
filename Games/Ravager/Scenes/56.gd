extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The maid reaches a hand out, as though to pet you, but thinks better of it and hides it behind her back. She waits patiently until you are finished, and the princess returns."
	Data["Level"]["Current Scene"]="56"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/57.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
