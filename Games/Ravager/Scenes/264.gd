extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The sound draws the attention of his partner, who whirls about, halberd in hand."
	Data["Level"]["Current Scene"]="264"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/265.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
