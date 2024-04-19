extends CharacterBody2D

func _process(delta):
	var viewport_rect = get_viewport_rect().size
	
	var height = $ColorRect.get_size()
	
	if $"..".ball_is_alive:
		if position.y != $"../ball_2".position.y:
			if position.y <= $"../ball_2".position.y:
				position.y += $"..".MOVEMENT_SPEED
			if position.y >= $"../ball_2".position.y:
				position.y -= $"..".MOVEMENT_SPEED
			
	position.y = clamp(position.y, height.y/2, viewport_rect.y - (height.y/2))
