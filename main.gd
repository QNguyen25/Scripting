extends Node2D

var playing = true
	
	


func _on_button_pressed():

	if get_tree().paused:
		get_tree().paused = false
	else:
		get_tree().paused = true
