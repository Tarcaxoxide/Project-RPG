extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The stench is awful, however, and the going nearly unbearable. Then you realise that you can flex your nostrils closed."
	Data["Level"]["Current Scene"]="141"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/142.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
