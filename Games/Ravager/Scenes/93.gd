extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Shocked into action, the palace guards renew their advance. You can see the princess being hauled bodily back through the chamber doors, soldiers on all sides."
	Data["Level"]["Current Scene"]="93"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/94.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
