extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You are in a narrow street, with empty-windowed houses looking down on you from both sides."
	Data["Level"]["Current Scene"]="108"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/109.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
