extends StaticBody2D

@export var required_yarn: int = 1
@onready var child_node = $Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	child_node.required_yarn = required_yarn
