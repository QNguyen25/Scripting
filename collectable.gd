extends StaticBody2D

func _on_area_2d_body_entered(body):
	print(body)
	if body.name == "Player":
		print("trigger by player")
		body.increase_score()
		queue_free()
