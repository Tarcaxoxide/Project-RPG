extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can feel your cock throbbing in time with your heart, still pounding, but not with fear. In this moment, you don't care if it's not allowed, or about the danger."
	Data["Level"]["Current Scene"]="296"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/297.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
