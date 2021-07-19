extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her hands hang in midair for a moment, then touch gingerly against you."
	Data["Level"]["Current Scene"]="199"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/200.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
