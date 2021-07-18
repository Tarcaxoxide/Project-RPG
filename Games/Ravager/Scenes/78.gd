extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

var uame:String

func _ready():
	$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+"? What are you doing? Do as i command!\""
	Data["Level"]["Current Scene"]="78"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/79.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	if($Dialog_Output.text == str("Adeline:\""+"Null"+",\"")):
		$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+"? What are you doing? Do as i command!\""
	P_process(delta,Data)
