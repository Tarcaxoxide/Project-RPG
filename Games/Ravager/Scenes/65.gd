extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\"I am Princess Adeline, heir to the Dragon Throne, and I am here to claim my birthright! Your days upon the throne are over. Now it is time to kneel.\""
	Data["Level"]["Current Scene"]="65"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/66.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
