extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Even young as you are, and much more in control, you can definitely relate."
	Data["Level"]["Current Scene"]="328"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/329.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
