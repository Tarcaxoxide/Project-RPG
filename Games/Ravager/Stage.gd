extends "res://Assets/Staging.gd"

func _ready():
	LevelPath="res://Games/Ravager/Scenes/"
	$Terminal.LevelPath=LevelPath
	$Terminal.loadLevels()
	_Register_Stat("Health",3)
	LoadLevel("res://Games/Ravager/Scenes/0.tscn")


func _process(delta):
	P_process(delta,$Terminal)
