extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Before the other guard can react, you loose your coils and dive into the alleyway. There are shouts from behind you, but he doesn't seem keen to follow."
	Data["Level"]["Current Scene"]="270"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/134.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
