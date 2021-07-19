extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can feel your cock throbbing in time with your heart, still pounding, but not with fear. She was an obedient subject and did not give you away - you decide to reward her."
	Data["Level"]["Current Scene"]="320"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/321.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
