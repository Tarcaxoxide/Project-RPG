extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The walls are polished stone, offering no clawholds, and the far doors are barricaded. But the windows..."
	Data["Level"]["Current Scene"]="94"
	Data["Level"]["Options"].append(_NewOption("Leap out the window!","res://Games/Ravager/Scenes/95.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Charge the gaurds!","res://Games/Ravager/Scenes/232.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
