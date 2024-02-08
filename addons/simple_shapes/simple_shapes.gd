@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("RectangleShape", "Polygon2D", preload("res://addons/simple_shapes/shapes/RectangleShape.gd"), preload("res://addons/simple_shapes/icons/square.svg"))
	add_custom_type("CircleShape", "Polygon2D", preload("res://addons/simple_shapes/shapes/CircleShape.gd"), preload("res://addons/simple_shapes/icons/circle.svg"))


func _exit_tree():
	remove_custom_type("RectangleShape")
	remove_custom_type("CircleShape")
