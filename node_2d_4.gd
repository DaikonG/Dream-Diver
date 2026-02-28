extends Node2D

func _on_body_entered(body: Node2D):
	if body.is_in_group("SPRITE") or body.name == "SPRITE":
		get_tree().change_scene_to_file("res://Part2.tscn")
