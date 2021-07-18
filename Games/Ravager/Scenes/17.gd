extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Slowly, you feel another, more primal urge awaken within you."
	Data["Level"]["Current Scene"]="17"
	Data["Level"]["Options"].append(_NewOption("Mount her.","res://Games/Ravager/Scenes/18.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Withdraw.","res://Games/Ravager/Scenes/162.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
