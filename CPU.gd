extends CharacterBody2D

const MOVEMENT_SPEED = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y != $"../ball_2".position.y:
		if position.y <= $"../ball_2".position.y:
			position.y += MOVEMENT_SPEED 
		if position.y >= $"../ball_2".position.y:
			position.y -= MOVEMENT_SPEED 

