extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="This close, you can smell her, a scent you recognize as fear. Though she is plain, she's got a pleasant shape, hidden by nothing but a roughspun shift."
	Data["Level"]["Current Scene"]="319"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/320.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
