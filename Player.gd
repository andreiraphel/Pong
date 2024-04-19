extends CharacterBody2D

func _process(delta):
	var viewport_rect = get_viewport_rect().size
	
	var height = $ColorRect.get_size()
	
	if Input.is_action_pressed("ui_down"):
		position += Vector2(0, $"..".MOVEMENT_SPEED)

	if Input.is_action_pressed("ui_up"):
		position += Vector2(0, -$"..".MOVEMENT_SPEED)
	
	position.y = clamp(position.y, height.y/2, viewport_rect.y - (height.y/2))

