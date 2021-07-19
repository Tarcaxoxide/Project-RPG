extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You curl up into the covers, feeling the softness of the linen against your scales. It is not difficult for you to drift off into a gentle sleep."
	Data["Level"]["Current Scene"]="0"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/170.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
