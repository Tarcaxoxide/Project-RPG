extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Determined, you dive into their midst. The first goes down almost instantly, as you pounce onto him and tear his throat open."
	Data["Level"]["Current Scene"]="232"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/233.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
