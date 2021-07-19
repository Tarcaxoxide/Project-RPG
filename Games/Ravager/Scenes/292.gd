extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="When the shouts recede, you slip back down from the window."
	Data["Level"]["Current Scene"]="292"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/293.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
