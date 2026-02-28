class_name Gravittty
extends Node

@export var gravity: float = 1000.0  # pixels per second squared
var falling: bool = false

func handle_gravity(body: CharacterBody2D, delta: float) -> void:
	if body == null:
		return
	if not body.is_on_floor():
		body.velocity.y += gravity * delta
	falling = body.velocity.y > 0 and not body.is_on_floor()
