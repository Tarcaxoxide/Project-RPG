extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a nervous swallow, the handmaiden opens her mouth."
	Data["Level"]["Current Scene"]="204"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/205.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
