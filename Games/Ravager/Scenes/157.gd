extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You awaken from your slumber. Your wounds are healing, it seems, and you can no longer hear the pealing of bells above. It is time to make your move."
	Data["Level"]["Current Scene"]="157"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/158.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
