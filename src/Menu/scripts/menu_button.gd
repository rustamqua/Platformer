extends Button
export var reference_path = ""
export(bool) var start_focused = false

func _ready():
	if(start_focused):
		grab_focus()
		
	connect("mouse_entered", self, "_on_Button_mouse_entered") 
	connect("pressed", self, "_on_Button_Pressed")
	
func _on_Button_mouse_entered():
	grab_focus()

func _on_Button_Pressed():
	if name == "mnu_start_game":
		get_tree().change_scene("res://src/Main/Game.tscn")
	elif name == "mnu_settings":
		get_tree().change_scene("res://src/Menu/scenes/SettingsScene.tscn")
	elif name == "go_back":
		get_tree().change_scene("res://src/Menu/scenes/MainTileScreen.tscn")
	elif name == "mnu_exit":
		get_tree().quit()

