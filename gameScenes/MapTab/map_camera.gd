extends Node2D

var dragging = false
var last_mouse_position = Vector2()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				dragging = true
				last_mouse_position = event.position
			else:
				dragging = false

	if event is InputEventMouseMotion and dragging:
		var offset = event.position - last_mouse_position
		position += offset
		last_mouse_position = event.position
