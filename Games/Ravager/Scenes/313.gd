extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The guards stagger back, aghast at what they've just done. One drops the halberd from his now-limp fingers."
	Data["Level"]["Current Scene"]="313"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes314.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
