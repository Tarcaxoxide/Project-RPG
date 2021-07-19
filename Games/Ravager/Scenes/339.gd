extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You manage to keep your roar of triumph to a soft grunt as you erupt inside her, thick seed filling her."
	Data["Level"]["Current Scene"]="339"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/340.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
