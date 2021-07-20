extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your indecision has cost you, and the baying mob has caught up. Torches, blades, and men surround you on all sides."
	Data["Level"]["Current Scene"]="345"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/346.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
