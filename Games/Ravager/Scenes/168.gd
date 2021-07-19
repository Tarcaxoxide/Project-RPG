extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"If there's something you wish to tell me, Ted, you will have your chance. Your tongue will return to you soon.\""
	Data["Level"]["Current Scene"]="168"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/39.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
