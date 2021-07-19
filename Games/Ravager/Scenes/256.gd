extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You cast a glance from your hiding place - you can see they're looking away. With a pulse of motion, you are out from under the cart and around the legs of one of them."
	Data["Level"]["Current Scene"]="256"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/257.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
