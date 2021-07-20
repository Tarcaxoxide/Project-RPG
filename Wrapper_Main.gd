extends Control

export var options:Array=[]

var TemplateOption={
			"Display":"text",
			"Path":"res://Games/Ravager/Scenes/Levels/L",
			"Real":false,
			"Ref":null
		}

func _Add_Option(Option):
	var file2Check = File.new()
	Option["Ref"].Options.append(Option["Display"])
	if(file2Check.file_exists(Option["Path"])):
		Option["Ref"].OptionsE.append(Option["Display"])
		Option["Real"]=true
	return Option

func _NewOption(Display:String,P:String,Selec):
	var nOption = TemplateOption.duplicate(true)
	nOption["Display"]=Display
	nOption["Path"]=P
	nOption["Ref"]=Selec
	return nOption


func load_file(file):
	var f = File.new()
	f.open(file,File.READ)
	var arfile:Array=[]
	while not f.eof_reached():
		var line = f.get_line()
		arfile.append(line)
	f.close()
	return arfile


func _ready():
	var file:Array = load_file('res://Games/Games.res')
	#var file:Array = ["Ravager"]
	for game in file:
		var gme="res://Games/"+game
		if (gme != "res://Games/"):
			print(gme)
			options.append(_Add_Option(_NewOption(game,gme+"/Main.tscn",$Selection)))
	#_NewOption("Continue","res://Games/Ravager/",$Selection)

func _process(delta):
	if($Selection.zelected):
		get_tree().change_scene("res://Games/"+$Selection.zelection+"/Main.tscn")


