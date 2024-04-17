extends CharacterBody2D

const MOVEMENT_SPEED = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y = $"../ball_2".position.y

