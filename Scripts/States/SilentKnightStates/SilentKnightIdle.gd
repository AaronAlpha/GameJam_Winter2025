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
			# the animation and collision should be 'on' on the left of the y-axis
			$"../../LeftFacing_CollisionShape2D".visible = true
			$"../../LeftFacing_CollisionShape2D".disabled = false
			# the animation and collision should be 'off' on the right of the y-axis
			$"../../RightFacing_CollisionShape2D".visible = false
			$"../../RightFacing_CollisionShape2D".disabled = true
			 
		elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
			$"../../AnimatedSprite2D".flip_h = true
			# the animation and collision should be 'off' on the left of the y-axis
			$"../../LeftFacing_CollisionShape2D".visible = false
			$"../../LeftFacing_CollisionShape2D".disabled = true
			# the animation and collision should be 'on' on the right of the y-axis
			$"../../RightFacing_CollisionShape2D".visible = true
			$"../../RightFacing_CollisionShape2D".disabled = false
				

		
	
	# if distance (direction) is within some threshold, we transition from Idle to Follow
	#if direction.length() < 100:
		#Transitioned.emit(self, "NutcrackerFollow")
		
