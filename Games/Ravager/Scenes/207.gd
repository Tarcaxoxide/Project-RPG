extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It does not take long before, with a jolt, you climax. Your cum splashes against the roof of her mouth and she closes it ready to swallow. then the next cascade arrives."
	Data["Level"]["Current Scene"]="207"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/208.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
