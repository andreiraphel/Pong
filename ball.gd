extends RigidBody2D

const INITIAL_SPEED = 200
var initial_direction = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector2(), initial_direction * INITIAL_SPEED)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	apply_impulse(Vector2(), initial_direction * INITIAL_SPEED)
