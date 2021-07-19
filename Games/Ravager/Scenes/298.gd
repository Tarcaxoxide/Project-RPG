extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She is left naked beneath you, heavy breasts and pale skin almost glowing in the dim light. The tearing of cloth is like thunder in your ears, but you cast aside your worry."
	Data["Level"]["Current Scene"]="298"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/299.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
