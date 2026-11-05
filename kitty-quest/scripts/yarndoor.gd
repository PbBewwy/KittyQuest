extends Area2D

var canInteract = false
@export var required_yarn = 0
@onready var game_manager: Node = $"../../GameManager"

func _on_body_entered(_body: Node2D) -> void:
	print("in")
	canInteract = true
	
func _on_body_exited(_body: Node2D) -> void:
	canInteract = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var interactButton= Input.is_action_pressed("interact")
	
	if interactButton and canInteract and game_manager.check_yarn() >= required_yarn:
		game_manager.remove_yarn(required_yarn)
		print("Yarn used")
		self.get_parent().queue_free()
