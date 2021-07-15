extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It is dark. You are coiled tightly around yourself. From somewhere beyond, you can hear a singing."
	Data["Level"]["Current Scene"]="3"
	Data["Level"]["Options"].append(_NewOption("Reach out.","res://Games/Ravager/Scenes/6.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Listen.","res://Games/Ravager/Scenes/4.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
