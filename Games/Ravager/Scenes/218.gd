extends "res://Assets/Level.gd"

export var Data:Dictionary = TemplateData.duplicate(true)

func _ready():
	$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+"What's wrong?\""
	Data["Level"]["Current Scene"]="218"
	Data["Level"]["Options"].append(_NewOption("Continue.","res://Games/Ravager/Scenes/219.tscn",$Selection))
	_prep_ready(Data)

func _process(delta):
	if($Dialog_Output.text == "Adeline:\""+"Null"+"What's wrong?\""):
		$Dialog_Output.text="Adeline:\""+str(Get_Stat_Value("PlayerName",Data))+"What's wrong?\""
	P_process(delta,Data)
