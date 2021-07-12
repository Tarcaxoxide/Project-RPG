extends Control

export var ErrorMessage:String=""


# (State:1=move back a level,State:2=do nothing,State:3=move forward a level,State:0=exit)

var TemplateOption={
			"Display":"text",
			"Path":"res://Scenes/Levels/L",
			"Real":false,
			"Ref":null
		}

var TemplateData = {
	"Triggers":{
		"Switch Scene":false
	},
	"Level":{
		"Current Scene":"",
		"Next Scene":"",
		"Options":[],
		"SelectionRef":null
	}
}

#export var Options:Array
#export var OptionsE:Array

func _Add_Option(Option):
	var file2Check = File.new()
	Option["Ref"].Options.append(Option["Display"])
	if(file2Check.file_exists(Option["Path"])):
		Option["Ref"].OptionsE.append(Option["Display"])
		Option["Real"]=true

func _prep_ready(Data:Dictionary):
	for Option in Data["Level"]["Options"]:
		_Add_Option(Option)
	Data["Level"]["Options"].front()["Ref"].visible=true

func P_process(delta,Data:Dictionary):
	if($Selection.zelected):
		for nScene in Data["Level"]["Options"]:
			if(nScene["Display"] == $Selection.zelection):
				Data["Level"]["Next Scene"]=nScene["Path"]
		$Selection.zelected=false
		Data["Triggers"]["Switch Scene"]=true

func _NewOption(Display:String,P:String,Selec):
	var nOption = TemplateOption.duplicate(true)
	nOption["Display"]=Display
	nOption["Path"]=P
	nOption["Ref"]=Selec
	return nOption
