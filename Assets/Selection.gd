extends Control

export var Options:Array
export var OptionsE:Array
export var zelection:String
export var zelected:bool=false

export var Bttns:Array

#func _on_Selection_visibility_changed():
#	$Selection.clear() # this should clear all the items?
#	for Option in Options:
#		$Selection.add_item(Option)


func AdjustButtonsToOptions(Buttons:Array):
	for button in Buttons:
		Bttns.append(Button.new())
		var cButton = Bttns.back()
		cButton.disabled=true
		cButton.text=button
		cButton.connect("pressed",self,"BttnPress",[cButton.text])
		for EnabledButton in OptionsE:
			if( EnabledButton == button ):
				cButton.disabled=false


func BttnPress(buttonString:String):
	zelection=buttonString
	zelected=true

func ClearButtons():
	for child in $OptionButtons.get_children():
		child.queue_free()

func AddButtons():
	for bttn in Bttns:
		$OptionButtons.add_child(bttn)

func _on_Selection_visibility_changed():
	ClearButtons()
	AdjustButtonsToOptions(Options)
	AddButtons()
