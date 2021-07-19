extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Handmaid:\"I... I could satisfy you in another way, i-if that's what you want\""
	Data["Level"]["Current Scene"]="191"
	Data["Level"]["Options"].append(_NewOption("Grunt.","res://Games/Ravager/Scenes/192.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Growl.","res://Games/Ravager/Scenes/192.tscn",$Selection))
	Data["Level"]["Options"].append(_NewOption("Lose interest.","res://Games/Ravager/Scenes/179.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	P_process(delta,Data)
