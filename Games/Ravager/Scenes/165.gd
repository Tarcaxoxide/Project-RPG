extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Undaunted, you rear back, drawing fire from within you. You reach back your head and open your maw."
	Data["Level"]["Current Scene"]="165"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/166.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
