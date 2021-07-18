extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Is this really what we were afraid of, all these years? Pathetic wyrm. Nothing more than a lapdog for whoever happens to be in power.\""
	Data["Level"]["Current Scene"]="80"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/80.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
