extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"Our last dragon was slain in battle, alongside my mother. For all my years I have been in waiting, while a regent rules in my stead.\""
	Data["Level"]["Current Scene"]="30"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/31.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
