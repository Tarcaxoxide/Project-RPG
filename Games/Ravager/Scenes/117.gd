extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The sounds of commotion grow nearer, and the figure stirs."
	Data["Level"]["Current Scene"]="117"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/118.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
