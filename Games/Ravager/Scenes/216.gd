extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He raises an arm to point at you, though it quivers. The guards look between themselves, but do not move. Now is your chance."
	Data["Level"]["Current Scene"]="216"
	Data["Level"]["Options"].append(_NewOption("Lunge for his arm!","res://Games/Ravager/Scenes/228.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Run for it!","res://Games/Ravager/Scenes/224.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Bite his fucking dick off!","res://Games/Ravager/Scenes/82.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
