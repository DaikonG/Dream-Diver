extends Button

func _on_button_pressed():
	print("Hello world! The button was pressed.")

	
func _on_button_down() -> void:
	get_tree().change_scene_to_file("res://node_2d4.tscn")
