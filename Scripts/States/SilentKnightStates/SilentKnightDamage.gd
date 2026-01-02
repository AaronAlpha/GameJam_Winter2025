extends SilentKnight_States

class_name SilentKnightDamage



func Enter():
	
	$"../../L_Attack_AnimatedSprite2D".visible = false
	$"../../L_Attack_AnimatedSprite2D".stop()
	$"../../R_Attack_AnimatedSprite2D".visible = false
	$"../../R_Attack_AnimatedSprite2D".stop()
	
	$"../../AnimatedSprite2D".visible = true
	$"../../AnimatedSprite2D".play("damage_animation")
	

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	if player:
		#GameManager_Singleton.playerHealth -= 
		
		if direction > 0 or Input.is_action_pressed("move_right"):
		
		# if it does exist: set velocity...
			player.velocity.x = direction * move_speed
		# should only be in x-axis
	
		elif direction < 0 or Input.is_action_pressed("move_left"):
			# if it does exist: set velocity...
			player.velocity.x = direction * move_speed
			# should only be in x-axis
		else:
			player.velocity.x = move_toward(player.velocity.x, 0, move_speed)
		
		
	# attack states
	if Input.is_action_just_pressed("Slash"):
		Transitioned.emit(self, "SilentKnightSlash")
		
	elif Input.is_action_just_pressed("Stab"):
		Transitioned.emit(self, "SilentKnightStab")
	

	# move states
	if Input.is_action_just_pressed("jump") or  Input.is_action_just_pressed("move_left")  or  Input.is_action_just_pressed("move_right"):
		 
		if (direction > 0 or Input.is_action_pressed("move_right")) or (direction < 0 or Input.is_action_pressed("move_left")): # moving right
			Transitioned.emit(self, "SilentKnightMove")
			
		if Input.is_action_just_pressed("jump") and player.is_on_floor():
			Transitioned.emit(self, "SilentKnightJump")
		
	else:
		Transitioned.emit(self, "SilentKnightIdle")
