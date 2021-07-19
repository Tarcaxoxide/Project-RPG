extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Before he can muster his courage, you spring back into action, and dive down the alleyway."
	Data["Level"]["Current Scene"]="268"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/269.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
