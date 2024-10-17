extends Control

func _on_ready():
	if SceneManager:
		SceneManager.show_scene("res://gameScenes/MapTab/Map.tscn", $SubViewportContainer/SubViewport)

func _on_map_button_pressed() -> void:
	if SceneManager:
		SceneManager.show_scene("res://gameScenes/MapTab/Map.tscn", $SubViewportContainer/SubViewport)

func _on_inventory_button_pressed() -> void:
	if SceneManager:
		SceneManager.show_scene("res://gameScenes/Inventory.tscn", $SubViewportContainer/SubViewport)
