extends Control

export var Show:bool=false
export var ShowCounter:float=0
const MaxShowCounter=50
var ShowSpeed:int =50


export var RValue:Array=[]
export var CValue:String=""
export var ReturnDone:bool=false

func _process(delta):
	if(ReturnDone):
		for item in RValue:
			AddOutput(item)
		RValue.clear()
		CValue=""
		ReturnDone=false
	if(Input.is_action_just_pressed("Tilda")):
		Show=!Show
	if(Show):
		if(ShowCounter < MaxShowCounter):
			ShowCounter+=ShowSpeed*delta
	else:
		if(ShowCounter > 0):
			ShowCounter-=ShowSpeed*delta
	if (ShowCounter > 0 and ShowCounter < 1):
		ShowCounter=0
	if (ShowCounter > MaxShowCounter and ShowCounter < (MaxShowCounter+1)):
		ShowCounter=MaxShowCounter
	
	visible=(ShowCounter != 0)

func AddOutput(text:String):
	$VBoxContainer/Output.add_item(text)

func ClearOutput():
	$VBoxContainer/Output.clear()


var commandlist:Array=[
						"help",
						"clear",
						"get stage",
						"get level",
						"get character",
						"reload",
						"load",
						"exit"
						]
var commandlistNames:Array=[
						"help          ",
						"clear         ",
						"get stage     ",
						"get level     ",
						"get character ",
						"reload        ",
						"load          ",
						"exit          "
						]
var commandlistDescriptions:Array=[
						"display this help info.",
						"clears the terminal screen.",
						"gets the value of the current loaded scene.",
						"gets the value of the current loaded scene.",
						"gets the character's stats",
						"reloads the current scene",
						"loads target scene",
						"exits the game"
						]

func list_files_in_directory(path):
	var files = []
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()

	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with("."):
			files.append(file)

	dir.list_dir_end()

	return files

var levelsList:Array=[]

func _ready():
	for file in list_files_in_directory("res://Games/Ravager/Scenes/Levels/"):
		levelsList.append(file.replace(".tscn",""))

var loading:bool=false
func cmd(command:String):
	command=command.to_lower()
	var cmdargs:Array=command.split(" ")
	
	var array:Array=[]
	for cm in cmdargs:
		array.append(cm.replace(" ",""))
	
	cmdargs.clear()
	for cm in array:
		cmdargs.append(cm)
	
	print(cmdargs)
	match cmdargs[0]:
		"load":
			if(cmdargs.size() > 1):
				RValue.append(cmdargs[1])
				CValue="Load"
			else:
				AddOutput("No level/stage, please choose one:")
				loading=true
				for l in levelsList:
					AddOutput(l)
				
		"reload":
			CValue="Reload"
			#get_tree().reload_current_scene()
		"exit":
			CValue="Exit"
			#get_tree().quit(0)
		"clear":
			ClearOutput()
		"help":
			ClearOutput()
			for i in range(0,commandlist.size()):
				AddOutput(commandlistNames[i]+commandlistDescriptions[i])
		"get":
			match cmdargs[1]:
				"stage":
					CValue="GetStage"
				"level":
					CValue="GetStage"
				"character":
					CValue="GetCharacter"
				_:
					AddOutput("Uknown:"+cmdargs[1])
		_:
			AddOutput("Uknown:"+cmdargs[0])

func _on_LineEdit_text_entered(new_text):
	cmd(new_text)
	$VBoxContainer/LineEdit.text=""


func _on_Output_item_activated(index):
	if(index < commandlist.size() and !loading):
		cmd(commandlist[index])
	elif(loading):
		cmd("load "+$VBoxContainer/Output.get_item_text(index))
		loading=false
	else:
		cmd($VBoxContainer/Output.get_item_text(index))
