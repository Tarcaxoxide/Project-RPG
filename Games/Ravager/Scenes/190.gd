extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"I'm sorry! I'm sorry!\""
	Data["Level"]["Current Scene"]="190"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/191.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
