extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The clanking of steel and hollering of men dies down outside. Your way is clear once again."
	Data["Level"]["Current Scene"]="130"
	Data["Level"]["Options"].append(_NewOption("Make good your escape.","res://Games/Ravager/Scenes/131.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
