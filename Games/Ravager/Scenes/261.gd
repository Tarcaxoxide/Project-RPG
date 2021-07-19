extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You wait, heartbeat thudding in your skull, untill one of the guards draws near to your hiding place. Then you sweep your tail out, hard."
	Data["Level"]["Current Scene"]="261"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/262.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
