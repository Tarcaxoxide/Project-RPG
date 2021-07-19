extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Her arcane speech is cut off by a gauntleted hand over her mouth, and she is hauled back from your side. The guards shoot each other smiles, and advance."
	Data["Level"]["Current Scene"]="220"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/221.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
