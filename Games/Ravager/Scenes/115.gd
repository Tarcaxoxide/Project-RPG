extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="The sound of footsteps approach from the way you came. You realise that you are leaving a trail of blood behind you."
	Data["Level"]["Current Scene"]="115"
	Data["Level"]["Options"].append(_NewOption("Hide under the cart!","res://Games/Ravager/Scenes/250.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Cimb up and into the window!","res://Games/Ravager/Scenes/116.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
