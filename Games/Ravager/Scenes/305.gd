extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You hardly notice, as your climax builds, the clamor coming in through the window - before the door is kicked in and armed solders storm in."
	Data["Level"]["Current Scene"]="305"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/306.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
