extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="You are safe for now, but it will not be long before the Regent's hunters catch up with you. You must find yourself a suitable lair in which to rest, at which point the act will end. Causing destruction will draw the attention of your pursuers, and prevent you from returning to an area. Your tongue has grown more familiar to you, and you may now speak simple commands"
	Data["Level"]["Current Scene"]="158"
	Data["Level"]["Options"].append(_NewOption("WIP.","res://Games/Ravager/Scenes/WIP.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
