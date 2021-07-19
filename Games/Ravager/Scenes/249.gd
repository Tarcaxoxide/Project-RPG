extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Placing your talons where you can, you begin to climb. Your wound aches, slowing your progress, but desperation drives you upwards."
	Data["Level"]["Current Scene"]="249"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/116.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
