extends Control # YT tut -> https://youtu.be/Mx3iyz8AUAE	4min.

func _ready():
	$VBoxContainer/StartButton.grab_focus()

func _on_StartButton_pressed():
	get_tree().change_scene("res://scenes/World.tscn")

func _on_OptionsButton_pressed():
	var options = load("res://scenes/Options.tscn")
	get_tree().current_scene.add_child(options)

func _on_QuitButton_pressed():
	get_tree().quit()
