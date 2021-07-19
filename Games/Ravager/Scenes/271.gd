extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Snapping your attention to the survivor, you let loose a roar."
	Data["Level"]["Current Scene"]="271"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/272.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
