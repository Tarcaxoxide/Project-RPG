extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your maw comes down on her exposed throat, tearing open soft flesh."
	Data["Level"]["Current Scene"]="288"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/290.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
