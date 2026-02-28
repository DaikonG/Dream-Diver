extends CharacterBody2D

@export var speed = 250.0

func _ready():
	velocity = Vector2(speed, speed)
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		if collision_info.get_normal().x != 0:
			$AnimatedSprite2D.flip_h = !$AnimatedSprite2D.flip_h
