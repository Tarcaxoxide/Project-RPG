extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The guards clutter and shout in the courtyard behind you. if she makes a sound, you are dead - but then, so is she."
	Data["Level"]["Current Scene"]="124"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/125.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
