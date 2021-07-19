extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="But you are not about to give up yet. With a twist of your spine, you roll coming up onto your haunches a few feet away."
	Data["Level"]["Current Scene"]="235"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/236.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
