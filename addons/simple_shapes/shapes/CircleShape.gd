@tool
extends Polygon2D

@export
var radius: int = 50:
	set(val):
		radius = val
		render_poly()

@export
var points_num: int = 10:
	set(val):
		points_num = max(3, val)
		render_poly()

func _enter_tree():
	render_poly()

func render_poly():
	var points: PackedVector2Array = []
	var angle_delta: float = 2.0 * (PI / float(points_num))
	
	# props to blender developers!
	for i in range(points_num):
		var angle = i * angle_delta
		points.append(
			Vector2(
				cos(angle) * radius,
				sin(angle) * radius
			)
		)
	
	polygon = points
