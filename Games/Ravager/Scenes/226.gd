extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="With a hiss, you pounce, landing bodily on one of the approaching soldiers. Your weight throws them backwards, and you hook your talons along the seems of this breastplate."
	Data["Level"]["Current Scene"]="226"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/227.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
