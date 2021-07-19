extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Spears and aces bite deep. Blood spurts out from your wounds to drench the wench, shocking her from the fugue state of ecstasy she was still in."
	Data["Level"]["Current Scene"]="309"
	#Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/1.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
