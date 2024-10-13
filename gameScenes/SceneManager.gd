extends Node

var current_scene: Node = null

@export var MainSceneNode: Node

func show_scene(scene_path: String, node: Node):
	# Удаляем текущую сцену, если она существует
	if current_scene:
		current_scene.queue_free()
	# Загружаем и инстанцируем новую сцену
	var scene = load(scene_path).instantiate()
	current_scene = scene 
	node.add_child(scene)
