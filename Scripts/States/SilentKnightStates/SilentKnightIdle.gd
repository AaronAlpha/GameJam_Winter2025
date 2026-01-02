extends SilentKnight_States

class_name SilentKnightIdle


# and then when we Enter() this state (EnemyIdle state), we call the randomizer func
func Enter():
	$"../../AnimatedSprite2D".play("idle_animation")


func Update(delta : float):
	pass


func PhysicsUpdate(delta : float):
	var direction := Input.get_axis("ui_left", "ui_right")
	
	# check if player node exists:
	if player:
		# if it does exist: check keyPress and change state
		if direction > 0 or Input.is_action_pressed("move_right"): # moving right
			$"../../AnimatedSprite2D".flip_h = false
			
			 
		elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
			$"../../AnimatedSprite2D".flip_h = true
			
				

	attackStates()
	
	
	
	
	
	
	
	# if distance (direction) is within some threshold, we transition from Idle to Follow
	#if direction.length() < 100:
		#Transitioned.emit(self, "NutcrackerFollow")
		
