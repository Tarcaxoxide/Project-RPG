extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"We will make our presentation to the court, and ascend the throne. we will rule together, you and I, and restore the majesty of the kingdom.\""
	Data["Level"]["Current Scene"]="32"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/33.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
