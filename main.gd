extends Node2D



const MOVEMENT_SPEED = 3
var ball_is_alive = true

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


func _on_score_right_body_entered(body):
	if body.name == "ball_2":
		$HUD.add_score_left()
		is_dead()
		body.queue_free()
		$Timer.start()


func _on_score_left_body_entered(body):
	if body.name == "ball_2":
		$HUD.add_score_right()
		is_dead()
		body.queue_free()
		$Timer.start()
			
			
func is_dead():
	ball_is_alive = false
	
func is_alive():
	ball_is_alive = true

func _on_timer_timeout():
	if !ball_is_alive:
		var ball_2  = preload("res://ball_2.tscn").instantiate()
		add_child(ball_2)
		is_alive()
