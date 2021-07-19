extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Even as you continue to cum inside the girl, you fight back - slashing one throat, tearing through mail to get at soft belly, but you are surrounded."
	Data["Level"]["Current Scene"]="308"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/1.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
