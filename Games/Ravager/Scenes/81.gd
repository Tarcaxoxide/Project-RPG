extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He steps forward, and leans down to give you a dismissive pat on the head."
	Data["Level"]["Current Scene"]="81"
	Data["Level"]["Options"].append(_NewOption("Bite his fucking dick off!","res://Games/Ravager/Scenes/82.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Lunge for his arm!","res://Games/Ravager/Scenes/228.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Run for it!","res://Games/Ravager/Scenes/224.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
