extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="At last, your orgasm passes, and you feel sated, for now. Carefully, you extract your cock, leaving her slumped, panting, and glassy-eyed."
	Data["Level"]["Current Scene"]="342"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/338.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
