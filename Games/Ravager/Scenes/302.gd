extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her soft body goes slack beneath you, fat tits flopping with the energy you're putting into her."
	Data["Level"]["Current Scene"]="302"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/303.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
