extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You don't care - all that matters is the woman who is your prize, and her cunt tight around your cock. You have to take it slow, but drawing it out feels wonderful."
	Data["Level"]["Current Scene"]="324"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/325.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
