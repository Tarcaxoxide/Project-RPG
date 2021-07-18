extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You see terror in her expression, and smell it in the flush of fresh perspiration."
	Data["Level"]["Current Scene"]="127"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/128.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
