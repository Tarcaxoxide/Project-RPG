extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="There's a sudden onrush of air, then you land with a crash on the cobblestone below, Dark blood splatters down around you."
	Data["Level"]["Current Scene"]="316"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/317.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
