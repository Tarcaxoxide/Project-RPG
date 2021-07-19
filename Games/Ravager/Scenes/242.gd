extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You feel the first halberd pierce your side. And then there is another. You try to wrest yourself away, but the bolt in your side locks your muscles rigid."
	Data["Level"]["Current Scene"]="242"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/243.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
