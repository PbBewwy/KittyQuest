extends Area2D

var canInteract = false

@onready var game_manager: Node = %GameManager


func _on_body_entered(_body: Node2D) -> void:
	canInteract = true
	
func _on_body_exited(_body: Node2D) -> void:
	canInteract = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var interactButton= Input.is_action_pressed("interact")
	
	if interactButton and canInteract:
		game_manager.add_yarn()
		queue_free()
