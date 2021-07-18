extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You'll never know, you suppose. But here, now, this shared moment of fear and interest is enough to save your hide."
	Data["Level"]["Current Scene"]="129"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/130.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
