extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She can feel it against her belly, and knows what is coming. Still she lets out a muffled scream as your massive shaft forces her cunt wide."
	Data["Level"]["Current Scene"]="299"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/300.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
