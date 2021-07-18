extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The princess leads you through the hallways of the palace. Guards jump to a nervous salute, while servants duck into doorways and corridors to avoid your path."
	Data["Level"]["Current Scene"]="58"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/59.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
