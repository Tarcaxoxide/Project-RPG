extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Arcing bolts of cum rain down on her, staining her shift and sheets, painting her pale skin even whiter."
	Data["Level"]["Current Scene"]="334"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/335.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
