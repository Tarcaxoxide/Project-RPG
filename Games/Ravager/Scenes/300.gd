extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Even with you holding her down, she begins to struggle, but you ruthlessly fuck her into her own bed, the frame creaking loudly. She stops fighting, her body surrendering to you, and you respond by fucking her harder still."
	Data["Level"]["Current Scene"]="300"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/301.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
