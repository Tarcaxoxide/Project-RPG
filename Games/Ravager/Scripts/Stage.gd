extends "res://Assets/Staging.gd"

func _ready():
	_Register_Stat("Health",3)
	LoadLevel("res://Games/Ravager/Scenes/Levels/_0000000000_0000000000_0000000000.tscn")

func _process(delta):
	var termpercent:float=float($Terminal.ShowCounter/100)*float(get_viewport().size.y)
	$Terminal.set_size(Vector2(get_viewport().size.x,termpercent))
	if(!$Terminal.ReturnDone):
		match $Terminal.CValue:
			"Load":
				print($Terminal.RValue)
				var scene="res://Games/Ravager/Scenes/Levels/"+$Terminal.RValue.front().to_upper()+".tscn"
				LoadLevel(scene)
				$Terminal.RValue.clear()
				$Terminal.RValue.append("load:"+"res://Games/Ravager/Scenes/Levels/"+scene)
				$Terminal.ReturnDone=true
			"Reload":
				LoadLevel("res://Games/Ravager/Scenes/Levels/"+Data["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				$Terminal.RValue.append("reload:"+"res://Games/Ravager/Scenes/Levels/"+Data["Current_Stage"].Data["Level"]["Current Scene"]+".tscn")
				$Terminal.ReturnDone=true
			"Exit":
				get_tree().change_scene("res://Games/Ravager/Scenes/Menu.tscn")
				$Terminal.ReturnDone=true
			"GetStage":
				$Terminal.RValue.append(Data["Current_Stage"].Data["Level"]["Current Scene"])
				$Terminal.ReturnDone=true
			"GetCharacter":
				$Terminal.RValue.append("Player Character Status:")
				for stat in _Get_Stat_Names():
					$Terminal.RValue.append("       "+stat+":"+str(_Get_Stat_Value(stat)))
				$Terminal.ReturnDone=true
	if(Data["Current_Stage"].Data["Triggers"]["Switch Scene"]):
		Data["Current_Stage"].Data["Triggers"]["Switch Scene"]=false
		for Nscene in Data["Current_Stage"].Data["Level"]["Options"]:
			if(Nscene["Real"]):
				if(Nscene["Path"] == Data["Current_Stage"].Data["Level"]["Next Scene"]):
					LoadLevel(Nscene["Path"])
