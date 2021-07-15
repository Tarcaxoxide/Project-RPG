extends Control

func _on_OlderThan18_pressed():
	$Panel/Panel/Continue_btn.disabled=!$Panel/Panel/OlderThan18.pressed


func _on_Continue_btn_pressed():
	$Panel.visible=false


func _on_Button_pressed():
	get_tree().change_scene("res://Games/Ravager/Scenes/Stage.tscn");


func _process(delta):
	var termpercent:float=float($Terminal.ShowCounter/100)*float(get_viewport().size.y)
	$Terminal.set_size(Vector2(get_viewport().size.x,termpercent))
	
	if(!$Terminal.ReturnDone):
		match $Terminal.CValue:
			"Reload":
				get_tree().reload_current_scene()
			"Exit":
				get_tree().quit(0)
			"GetStage":
				$Terminal.RValue.append("Not Available")
				$Terminal.ReturnDone=true
			"GetCharacter":
				$Terminal.RValue.append("Player Character Status:")
				$Terminal.RValue.append("       "+"Not Available!")
				$Terminal.ReturnDone=true
