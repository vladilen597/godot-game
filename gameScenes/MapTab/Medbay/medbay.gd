extends Node2D

@onready var _animated_sprite = $MedbayBackground/medic

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_animated_sprite.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
