extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="For a moment, terror and vertigo reign..."
	Data["Level"]["Current Scene"]="98"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/99.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
