extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You throw yourself bodily into the door. It shudders, but holds firm, and the wound in your side flares into a sudden agony."
	Data["Level"]["Current Scene"]="245"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/246.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
