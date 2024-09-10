extends Node2D

#after the game is loaded, assign these vars to their nodes
@onready var player = $Player
@onready var scoreUI = $ScoreLabel
	
	
	#make sure the signal is connected
func _ready():
	scoreUI.text = "Score: 0"
	if !player.scoreIncreased.is_connected(_on_scoreIncreased):
		player.scoreIncreased.connect(_on_scoreIncreased)
		
func _on_button_pressed():

	if get_tree().paused:
		get_tree().paused = false
	else:
		get_tree().paused = true
	
	
	
func _on_scoreIncreased(_score):
	var currentScore = _score
	
	if _score:
		scoreUI.text = "Score: "+ str(currentScore)
