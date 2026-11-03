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
	
	if interactButton and canInteract and game_manager.check_keys():
		game_manager.remove_key()
		print("Key used")
		queue_free()
