extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The freeze at first, as shocked to catch you as you are. But though it might have won you a moment's grace, you are still buried within the nameless woman you're ravishing."
	Data["Level"]["Current Scene"]="306"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/307.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
