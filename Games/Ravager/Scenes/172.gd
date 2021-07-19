extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You spring forward - your limbs may be unfamiliar, but they grant you easy strength. The handmaid falls backwards, the platter clatters to one side. You take up position over her."
	Data["Level"]["Current Scene"]="172"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/173.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
