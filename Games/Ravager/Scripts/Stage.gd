extends "res://Assets/Staging.gd"

func _ready():
	_Register_Stat("Health",3)
	LoadLevel("res://Games/Ravager/Scenes/Levels/_0000000000_0000000000_0000000000.tscn")


func _process(delta):
	P_process(delta,$Terminal)
