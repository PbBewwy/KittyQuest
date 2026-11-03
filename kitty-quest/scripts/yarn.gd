extends Area2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _on_body_entered(_body: Node2D) -> void:
	print("+1")
	queue_free()
