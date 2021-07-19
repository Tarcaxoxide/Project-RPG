extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The palm of your outstretched claw meets her face, silencing her, and your weight smashes her back down on the bed."
	Data["Level"]["Current Scene"]="282"
	Data["Level"]["Options"].append(_NewOption("Hold her in place.","res://Games/Ravager/Scenes/283.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Kill her.","res://Games/Ravager/Scenes/289.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
