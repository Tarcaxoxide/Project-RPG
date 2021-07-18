extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="He collapses to his knees. A severed hand drops lifelessly to one side. You spit something unrecognisable from your mouth. He retches."
	Data["Level"]["Current Scene"]="88"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/89.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
