extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Gobbets of clear, viscous liquid spray across her face, and spatter across her shoulders. Not quite what either of you were expecting."
	Data["Level"]["Current Scene"]="166"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/167.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
