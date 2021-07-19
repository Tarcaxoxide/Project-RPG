extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Arching her neck, she brings it to your tip. She holds there, adjusting her jaw slightly, as she works out whether she can fit all your breadth inside."
	Data["Level"]["Current Scene"]="205"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/206.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
