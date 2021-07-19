extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="There are screams, the scraping of metal, and panic. Your talons sink into soft, yielding flesh. Your jaw cracks open helmets and bones."
	Data["Level"]["Current Scene"]="241"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/242.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
