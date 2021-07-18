extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She does not move, nor speak, though you hear her breath quicken. Your muscles tighten, ready to spring if she makes a sound."
	Data["Level"]["Current Scene"]="123"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/124.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
