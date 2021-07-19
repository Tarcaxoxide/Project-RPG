extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The motion yanks the maid's body up with it, and with a jolt she begins to realise what's happening."
	Data["Level"]["Current Scene"]="175"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/176.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
