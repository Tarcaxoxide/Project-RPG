extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It saws back and forth over her clit, making her twitch as you unleash your seed onto her."
	Data["Level"]["Current Scene"]="333"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/334.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
