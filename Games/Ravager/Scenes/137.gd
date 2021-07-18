extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="His eyes go wide, and he quickly dives back the way he came."
	Data["Level"]["Current Scene"]="137"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/138.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
