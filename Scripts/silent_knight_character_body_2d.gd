extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -300.0


func _ready() -> void:
	$AnimatedSprite2D.play("idle_animation")


func _physics_process(delta: float) -> void:
	
	# instead of writing all the player movement in this func, put it into a new func
	# playerMovement(delta) is the func used to hold all player movement
	playerMovement(delta)
	

func playerMovement(delta):
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# movement = right
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("move_animation")
	
	# movement = left
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("move_animation")
		
		# because of the width of the sprite, the collision shape needs to be flipped across the y axis 
		# to 'be with' the sprite after flipping
		$CollisionShape2D.position[0] *= -1
	
	# when player has no direction and no velocity -> i.e. stationary
	# make knight idle
	else:
		$AnimatedSprite2D.play("idle_animation")
		# setting velocity to 0
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# movement = jump
	if Input .is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY 
		
		$AnimatedSprite2D.play("jump_animation")
		
	move_and_slide()
