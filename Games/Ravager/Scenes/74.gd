extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+",\""
	Data["Level"]["Current Scene"]="74"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/75.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	if($Dialog_Output.text == str("Adeline:\""+"Null"+",\"")):
		$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+",\""
	P_process(delta,Data)
