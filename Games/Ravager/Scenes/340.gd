extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="She moans, long and low, into your paw when she feels burst after burst of your cum pumped deep inside her."
	Data["Level"]["Current Scene"]="340"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/341.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
