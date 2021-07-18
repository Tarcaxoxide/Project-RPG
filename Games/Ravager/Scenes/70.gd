extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Wherever it is you found... this... thing... it changes nothing. The kingdom has been a republic since you were a child. And that is not going to change now.\""
	Data["Level"]["Current Scene"]="70"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/71.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
