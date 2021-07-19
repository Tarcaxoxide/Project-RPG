extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You manage to keep your roar of triumph to a soft grunt as you pull out, enormous cock coming down on her pubic mound."
	Data["Level"]["Current Scene"]="332"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/333.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
