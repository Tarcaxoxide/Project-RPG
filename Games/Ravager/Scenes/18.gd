extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You feel yourself hardening, and in the moment you desire nothing more. Swinging your weight forward, you push the princess onto her back and"
	Data["Level"]["Current Scene"]="18"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/19.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
