extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You can feel her clench down on you as she surrenders to the pleasure you're inflicting."
	Data["Level"]["Current Scene"]="330"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/331.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
