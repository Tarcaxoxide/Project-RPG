extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her eyes settle on you, and she moves to scream - but her throat, sleep-parched and tight with fear, makes only a whimper."
	Data["Level"]["Current Scene"]="280"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/281.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
