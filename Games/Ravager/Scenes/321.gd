extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You lock eyes with her, your cock sliding out of it's sheath as it hardens. She can feel it against her belly, and knows what is coming. She can't keep herself from whimpering."
	Data["Level"]["Current Scene"]="321"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/322.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
