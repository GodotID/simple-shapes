@tool
extends Polygon2D

@export
var size: Vector2 = Vector2(100,100):
	set(val):
		size = val
		render_poly()

func _enter_tree():
	render_poly()

func render_poly():
	polygon = [
		Vector2(0, 0) * size,
		Vector2(1, 0) * size,
		Vector2(1, 1) * size,
		Vector2(0, 1) * size
	]
