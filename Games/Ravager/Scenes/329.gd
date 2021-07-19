extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her hips start to twitch and buck, her thighs tightening around you. A soft keening comes from her mouth."
	Data["Level"]["Current Scene"]="329"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/330.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
