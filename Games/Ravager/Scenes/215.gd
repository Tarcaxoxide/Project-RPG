extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Balthorne:\"Th-this changes nothing! Guards, subdue that serpent!\""
	Data["Level"]["Current Scene"]="215"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/216.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
