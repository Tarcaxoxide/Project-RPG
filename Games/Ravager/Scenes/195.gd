extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can feel yourself hardening, and with a kink of your neck, you can catch a glance at what is emerging from between your legs."
	Data["Level"]["Current Scene"]="195"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/196.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
