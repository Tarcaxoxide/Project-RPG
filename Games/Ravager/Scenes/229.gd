extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You feel the bones of his wrist pop in your mouth, and taste blood coursing through the ribbons of flesh that are left. His hand falls lifelessly to the floor."
	Data["Level"]["Current Scene"]="229"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/230.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
