extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="First Guard:\"Oi! Where'd it go?\""
	Data["Level"]["Current Scene"]="251"
	Data["Level"]["Options"].append(_NewOption("Subdue them, and make good your escape.","res://Games/Ravager/Scenes/261.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Pick one of them off.","res://Games/Ravager/Scenes/256.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Stay hidden.","res://Games/Ravager/Scenes/252.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
