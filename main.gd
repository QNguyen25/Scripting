extends Node2D

var playing = true

func _process(delta):
	#if playing is true, set_process(is_processing())
	#if it isn't, set_process(not is_processing())
	if playing:
		get_tree().paused = true
	else:
		get_tree().paused = false

func _on_button_pressed():
	if playing == true:
		playing = false
	else:
		playing = true
