extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Before she can fully rouse herself, you're back in motion - slipping back out of the riim like the shadow of a bad dream."
	Data["Level"]["Current Scene"]="343"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/344.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
