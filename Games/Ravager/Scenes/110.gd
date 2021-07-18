extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="They're coming for you."
	Data["Level"]["Current Scene"]="110"
	Data["Level"]["Options"].append(_NewOption("Outrun them!","res://Games/Ravager/Scenes/237.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Hide!","res://Games/Ravager/Scenes/111.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
