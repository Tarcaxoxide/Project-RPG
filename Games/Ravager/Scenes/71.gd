extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a wave of his hand, armoured figures push through the ranks of the courtiers. You see, now, that nobles' faces have settled to a cold stillness."
	Data["Level"]["Current Scene"]="71"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/72.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
