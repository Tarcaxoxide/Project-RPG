extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="It's a new yet oddly familiar sensation, a woman spasming around you as she's driven to ecstasy by your cock. In the face of it you can't hold back."
	Data["Level"]["Current Scene"]="331"
	Data["Level"]["Options"].append(_NewOption("Cun on her.","res://Games/Ravager/Scenes/332.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Cum in her.","res://Games/Ravager/Scenes/339.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
