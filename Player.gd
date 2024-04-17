extends CharacterBody2D

const MOVEMENT_SPEED = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewport_rect = get_viewport_rect().size

	if Input.is_action_pressed("ui_down"):
		position += Vector2(0, MOVEMENT_SPEED)

	if Input.is_action_pressed("ui_up"):
		position += Vector2(0, -MOVEMENT_SPEED)
	
	position.y = clamp(position.y, 0, viewport_rect.y)


func _on_area_2d_body_entered(body):
	body.direction.x *= -1
