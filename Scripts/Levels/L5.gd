extends "res://Scripts/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

#var TemplateOption={
#			"Display":"text",
#			"Path":"res://Scenes/Levels/L",
#			"Real":false,
#			"Ref":null
#		}

#var TemplateData = {
#	"Triggers":{
#		"Switch Scene":false
#	},
#	"Level":{
#		"Next Scene":"",
#		"Options":[],
#		"Real":false,
#		"SelectionRef":null
#	}
#}


func _NewOption(Display:String,P:String):
	var nOption = TemplateOption.duplicate(true)
	nOption["Display"]=Display
	nOption["Path"]=P
	nOption["Ref"]=$Selection
	return nOption
	
func _ready():
	Data["Level"]["Current Scene"]="L5"
	Data["Level"]["Options"].append(_NewOption("Continue","res://Scenes/Levels/L6.tscn"))
	_prep_ready(Data)
	$Selection.visible=true

func _process(delta):
	P_process(delta,Data) # forgive me , i just don't want to see the code here XD and it's the same everywhere it's used.
