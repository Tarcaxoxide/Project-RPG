extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You look down at your limbs. They are covered in scales, and tipped with cruel talons. Fire burns in your belly."
	Data["Level"]["Current Scene"]="10"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/11.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
