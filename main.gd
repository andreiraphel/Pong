extends Node2D


func _process(delta):
	pass


func _on_top_body_entered(body):
	if body.name == "ball_2":
		body.direction.y *= -1


func _on_bottom_body_entered(body):
	if body.name == "ball_2":
		body.direction.y *= -1


func _on_area_2d_body_entered(body):
	if body.name == "ball_2":
		body.direction.x *= -1
