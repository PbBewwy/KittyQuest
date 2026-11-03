extends CharacterBody2D


const SPEED = 50.0

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("move_left", "move_right")
	var directiony := Input.get_axis("move_up", "move_down")
	if directionx:
		velocity.x = directionx * SPEED 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
