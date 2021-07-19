extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her limbs kick and flail, briefly, As blood pours out across the sheets, their strength soon fades."
	Data["Level"]["Current Scene"]="290"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/291.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
