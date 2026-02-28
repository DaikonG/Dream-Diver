extends CharacterBody2D

@export var walk_speed: float = 200.0
@export var jump_speed: float = 400.0
@export var gravi: Gravittty  # assign the Gravity node in Inspector

func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO

	# Left/right movement
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1

	velocity.x = input_vector.x * walk_speed

	# Gravity
	if gravi != null:
		gravi.handle_gravity(self, delta)

	# Jump
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = -jump_speed

	# Apply movement
	move_and_slide()
