extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 50.0

func _physics_process(_delta: float) -> void:
	# Get 2D input vector and normalize it so diagonal movement isn't faster
	var input_direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Handle movement
	velocity = input_direction * SPEED
	
	# Handle animations
	if input_direction != Vector2.ZERO:
		# Update animation based on dominant movement axis
		if abs(input_direction.x) >= abs(input_direction.y):
			animated_sprite.play("left_right")
			animated_sprite.flip_h = input_direction.x < 0
		elif input_direction.y < 0:
			animated_sprite.play("back")
		elif input_direction.y > 0:
			animated_sprite.play("front")
	else:
		# Stop animation when not moving (or play an "idle" animation)
		animated_sprite.stop()

	move_and_slide()
