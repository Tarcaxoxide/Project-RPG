extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The sewers are clearly the legacy of some older, greater era. Its brick laid pipes are not very broad, but your body is graced with sinuous agility and you make easy progress."
	Data["Level"]["Current Scene"]="140"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/141.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
