extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Voice:\"Well I suppose I'm fortunate you haven't fully matured yet. But there are more deserving subjects of your rage then I.\""
	Data["Level"]["Current Scene"]="167"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/28.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
