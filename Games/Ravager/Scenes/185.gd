extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"Y-yes, your Highness. I'm so sorry! Please - please forgive me, I...\""
	Data["Level"]["Current Scene"]="185"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/186.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
