extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The ocean stretches endlessly to one side. mountain peaks rise on the other, reaching up to the blanket of stars above."
	Data["Level"]["Current Scene"]="102"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/103.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
