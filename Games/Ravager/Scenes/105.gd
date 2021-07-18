extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The air is thick with the smell of dirt, smoke, and humans. You feel cobblestones beneath your talons."
	Data["Level"]["Current Scene"]="105"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/106.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
