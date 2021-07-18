extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The guards, taken aback, make no move to stop you."
	Data["Level"]["Current Scene"]="77"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/78.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
