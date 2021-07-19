extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She is tight around your cock, and that's all that matters - the feeling of claiming a woman as yours. Your senses narrow to just the piece of fuckmeat beneath you."
	Data["Level"]["Current Scene"]="304"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/305.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
