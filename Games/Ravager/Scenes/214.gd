extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The palace guards take an involuntary step backward, and even balthorne's hand trembles as he reaches for his sword."
	Data["Level"]["Current Scene"]="214"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/215.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
