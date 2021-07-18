extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You try not to think about what your fangs are digging into. With a whipcrack twist of your neck, you wrench your head aside"
	Data["Level"]["Current Scene"]="86"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/87.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
