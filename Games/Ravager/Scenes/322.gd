extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your forepaw clamped over her mouth keeps her from making any sound louder than a soft moan as you ease yourself into her."
	Data["Level"]["Current Scene"]="322"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/323.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
