extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Cautiously, she steps forward, approaching the bed. The platter shivers slightly as her hands tremble."
	Data["Level"]["Current Scene"]="52"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/53.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
