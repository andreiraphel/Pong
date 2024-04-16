extends RigidBody2D

const INITIAL_SPEED = 200
var initial_direction = Vector2.RIGHT

func _ready():
	apply_impulse(Vector2(), initial_direction * INITIAL_SPEED)

func _process(delta):
	var viewport = get_viewport()
	var viewport_rect = viewport.get_visible_rect()
	
	position += initial_direction * INITIAL_SPEED * delta

	position = clamp(position, 0, viewport_rect.size - 100)
