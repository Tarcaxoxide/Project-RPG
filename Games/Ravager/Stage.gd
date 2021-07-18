extends "res://Assets/Staging.gd"
#extends Control

func _ready():
	LevelPath="res://Games/Ravager/Scenes/"
	$Terminal.LevelPath=LevelPath
	$Terminal.loadLevels()
	_Register_Stat("PlayerName","Dragon")
	_Register_Stat("Health",3)
	_Register_Stat("Strength",0)
	_Register_Stat("Charm",0)
	_Register_Stat("Potency",0)
	_Register_Stat("Cruelty",0)
	_Register_Stat("Mercy",0)
	LoadLevel("res://Games/Ravager/Scenes/0.tscn")


func _process(delta):
	P_process(delta,$Terminal)
