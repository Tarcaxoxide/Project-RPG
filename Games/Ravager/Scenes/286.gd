extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The moment lengthens. The shouts from outside grow louder... and then begin to recede."
	Data["Level"]["Current Scene"]="286"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/287.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
