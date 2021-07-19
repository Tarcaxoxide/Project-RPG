extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="In an eyeblink, you pivot and return the way you came. It's only then you realise that you have gotten yourself neatly surrounded."
	Data["Level"]["Current Scene"]="240"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/239.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
