extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She lies insensate, twitching still. You leave her with her shift askew, revealing a cunt that is left gaped wide."
	Data["Level"]["Current Scene"]="337"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/338.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
