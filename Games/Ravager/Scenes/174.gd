extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You lunge down, catching fabric in the hardened tip of your maw. with a flick of your neck it tears away."
	Data["Level"]["Current Scene"]="174"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/175.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
