extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="This close, you can smell her, a scent you realize as fear. Though she is plain, she's got a pleasant shape, hidden by only roughspun shift."
	Data["Level"]["Current Scene"]="295"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/296.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
