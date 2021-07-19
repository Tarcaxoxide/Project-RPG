extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"First, you will address me as your Highness. And second, you would do well to treat our prince with the respect he deserves.\""
	Data["Level"]["Current Scene"]="184"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/185.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
