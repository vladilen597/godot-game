extends Node2D

@onready var inv: Inv = preload("res://gameScenes/inventory/player_inventory.tres")
@export var item: InvItem
@export var item2: InvItem

@onready var scene_container = get_node("/root/Game/MainScene")

func _on_to_medbay_button_pressed() -> void:
	print('btn1')
	if SceneManager:
		SceneManager.show_scene("res://gameScenes/MapTab/Medbay/Medbay.tscn", scene_container)


func _on_add_medkit_pressed() -> void:
	inv.insert(item2)


func _on_button_3_pressed() -> void:
	inv.insert(item)
