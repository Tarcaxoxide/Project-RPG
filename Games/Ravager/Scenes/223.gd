extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Is this really what we were afraid of, all these years? Pathetic wyrm.\""
	Data["Level"]["Current Scene"]="223"
	Data["Level"]["Options"].append(_NewOption("Lunge for his arm!","res://Games/Ravager/Scenes/228.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Run for it!","res://Games/Ravager/Scenes/224.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
