extends CharacterBody2D

@export var speed = 300.0
@export var jump_velocity = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var _animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	# 2. Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction != 0:
		velocity.x = direction * speed
		_animated_sprite.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	update_animations(direction)

func update_animations(direction):
	if not is_on_floor():
		_animated_sprite.play("Jump" if velocity.y < 0 else "Fall")
	elif direction != 0:
		_animated_sprite.play("Run")
	else:
		_animated_sprite.play("Idle")
