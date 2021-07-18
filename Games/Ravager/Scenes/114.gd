extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="An alleyway opens up in one corner with an old cart rested next to it. Wooden stairs lead up the rear of the building."
	Data["Level"]["Current Scene"]="114"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/115.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
