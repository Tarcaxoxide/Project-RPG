extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Opening things is difficult at first, but you quickly get the hand of prising open catches and hooking open drawers with the delicate use of your talons."
	Data["Level"]["Current Scene"]="44"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/45.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
