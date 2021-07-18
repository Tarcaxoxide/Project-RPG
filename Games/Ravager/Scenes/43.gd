extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="While the linens are luxurious, you feel a compulsion to make something more... personal. You leap down from the bed, and begin to search the room for materials."
	Data["Level"]["Current Scene"]="43"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/44.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
