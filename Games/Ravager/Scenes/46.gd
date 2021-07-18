extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You soon managed to collect a pile of the princess's underthings. It smells deeply assuring, and is comfortable besides."
	Data["Level"]["Current Scene"]="46"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/47.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
