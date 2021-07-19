extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Your eyes pick out your opponents long before they see you. You dive behind a pile of barrels, wait untill they draw close, then launch yourself at them."
	Data["Level"]["Current Scene"]="239"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/241.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
