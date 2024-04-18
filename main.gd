extends Node2D


func _process(delta):
	pass

func _on_top_body_entered(body):
	if body.name == "ball_2":
		body.direction.y *= -1

func _on_bottom_body_entered(body):
	if body.name == "ball_2":
		body.direction.y *= -1

func _on_player_coll_body_entered(body):
	if body.name == "ball_2":
		body.add_acceleration()
		body.direction.x *= -1

func _on_cpu_coll_body_entered(body):
	if body.name == "ball_2":
		body.add_acceleration()
		body.direction.x *= -1
