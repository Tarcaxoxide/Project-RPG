extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He staggers backwards, clutching at the stump, gore splashing on the tiles."
	Data["Level"]["Current Scene"]="231"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/89.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
