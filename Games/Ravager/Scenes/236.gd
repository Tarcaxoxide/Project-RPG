extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a hiss, you pounce again - this time landing bodily on one of the approaching soldiers."
	Data["Level"]["Current Scene"]="236"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/96.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
