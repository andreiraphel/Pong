extends CharacterBody2D

var acceleration = 30
var speed = 250
var direction = Vector2.ZERO


func _ready():
	direction.x = [1,-1].pick_random()
	direction.y = [1,-1].pick_random()

func _physics_process(delta):
	
	velocity = direction * speed
	
	move_and_slide()

func add_acceleration():
	speed += acceleration
	
