extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your flesh is firm but provides its own lubrication. As her strokes turn to urgent tugs, a surge of pleasure washes through you. If this is what a woman's hands feel like..."
	Data["Level"]["Current Scene"]="202"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/203.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
