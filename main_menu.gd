extends Control

@onready var _animated_sprite = $"Node2D/Sprite-0002"
@onready var _animated_man_1 = $"Node2D/man1"
@onready var _animated_man_2 = $"Node2D/man2"

func _ready() -> void:
	$AudioStreamPlayer.play()
	_animated_sprite.play("default")
	_animated_man_1.play("default")
	_animated_man_2.play("default")

func _on_exit_button_pressed() -> void:
	$PopupPanel.popup_centered();

func _on_button_pressed() -> void:
	get_tree().quit();

func _on_button_2_pressed() -> void:
	$PopupPanel.hide()

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game/Game.tscn")
