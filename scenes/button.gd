extends Button

func _ready():
	# Connect the pressed signal when the scene starts
	self.pressed.connect(_on_pressed)

func _on_pressed() -> void:
	print("Hello world! The button was pressed.")
	get_tree().change_scene_to_file("res://node_2d4.tscn")
	
func _on_button_down() ->void:
	print("Hello world! The button was pressed.")
	get_tree().change_scene_to_file("res://node_2d4.tscn")
