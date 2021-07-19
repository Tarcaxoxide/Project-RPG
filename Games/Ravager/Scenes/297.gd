extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You lock eyes with her, your cock sliding out of its sheath as it hardens, and rip the shift from her body."
	Data["Level"]["Current Scene"]="297"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/298.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
