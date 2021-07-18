extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You freeze in place, hoping that the long shadows will veil you."
	Data["Level"]["Current Scene"]="119"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/120.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
