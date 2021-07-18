extends Control

export var Options:Array
export var OptionsE:Array
export var zelection:String
export var zelection_text:String
export var zelected:bool=false

export var Bttns:Array

var LineEditBox:LineEdit=null

#func _on_Selection_visibility_changed():
#	$Selection.clear() # this should clear all the items?
#	for Option in Options:
#		$Selection.add_item(Option)


func AdjustButtonsToOptions(Buttons:Array):
	for button in Buttons:
		if(button == "{Text Field}"):
			Bttns.append(LineEdit.new())
			var cButton = Bttns.back()
			cButton.text="TextField"
			cButton.name="TextField"
			LineEditBox=cButton
		else:
			Bttns.append(Button.new())
			var cButton = Bttns.back()
			cButton.disabled=true
			cButton.text=button
			cButton.connect("pressed",self,"BttnPress",[cButton.text])
			for EnabledButton in OptionsE:
				if( EnabledButton == button ):
					cButton.disabled=false


func BttnPress(buttonString:String):
	if(LineEditBox != null):
		zelection="{Text}:"+buttonString
		zelection_text=LineEditBox.text
	else:
		zelection=buttonString
	zelected=true

func ClearButtons():
	for child in $OptionButtons.get_children():
		child.queue_free()

func AddButtons():
	for bttn in Bttns:
		$OptionButtons.add_child(bttn)

func _on_Selection_visibility_changed():
	if(LineEditBox != null):
		LineEditBox.text=zelection_text
	ClearButtons()
	AdjustButtonsToOptions(Options)
	AddButtons()
