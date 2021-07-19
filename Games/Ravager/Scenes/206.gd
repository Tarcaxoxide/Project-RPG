extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Struggling, she juts out her tongue and takes the tip of your cock into her mouth, tongue lapping beneath it. The sensation is incredible, and your pleasure quickly gains momentum."
	Data["Level"]["Current Scene"]="206"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/207.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
