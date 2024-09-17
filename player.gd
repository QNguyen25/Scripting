extends CharacterBody2D


var speed = 400.0
var angular_speed = PI
var score = 0
signal scoreIncreased(score)


func _init():
	print("hi")
	
	
	
	
func _process(delta):
	#rotation += angular_speed * delta
	
	#var velocity = Vector2.UP.rotated(rotation) * speed
	#position += velocity * delta
	var direction = 0
	#if the player presses the a key turn left
	if Input.is_action_pressed("left"):
		direction = -1
	#if the player presses the d key turn right
	if Input.is_action_pressed("right"):
		direction = 1
	
	print(direction)
	rotation += angular_speed * delta * direction 
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	
	
	position += velocity * delta
	
	
	
func increase_score():
	score += 1
	print(score)
	#send a signal to update the score text
	scoreIncreased.emit(score)
