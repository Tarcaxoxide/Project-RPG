extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="There's more here than you fancy your chances. Abandoning your prey, you dive into the alleyway. There are shouts from behind you, but they don't seem keen to follow."
	Data["Level"]["Current Scene"]="277"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/134.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
