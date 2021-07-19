extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"G-ghrk!\""
	Data["Level"]["Current Scene"]="209"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/210.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
