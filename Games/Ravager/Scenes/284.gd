extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Even then, she has an arm free. The bedframe creaks with the force of her movements."
	Data["Level"]["Current Scene"]="284"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/285.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
