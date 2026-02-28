extends Area2D

func _on_body_entered(body: Node2D):
	print("Something touched the spikes: ", body.name) # This will show in the Output bottom panel
	if body.name == "SPRITE" or body.is_in_group("SPRITE"):
		get_tree().reload_current_scene()
