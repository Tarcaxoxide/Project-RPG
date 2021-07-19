extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The walls are polished stone, offering no clawholds, and the far doors are barricaded. But the windows..."
	Data["Level"]["Current Scene"]="225"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/226.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
