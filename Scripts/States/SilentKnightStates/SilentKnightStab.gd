extends SilentKnight_States

class_name SilentKnightStab


func Enter():


	
	check_death()

	if direction > 0 or Input.is_action_pressed("move_right"): # moving right
		$"../../AnimatedSprite2D".visible = false
		$"../../L_AnimatedSprite2D".visible = true
		$"../../L_AnimatedSprite2D".play("stab_animation")
	
	elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
		$"../../AnimatedSprite2D".visible = false
		$"../../R_AnimatedSprite2D".visible = true
		$"../../R_AnimatedSprite2D".play("stab_animation")



func Update(delta : float):
	#check_death()
	pass

func PhysicsUpdate(delta : float):
	# checking if player exists
	if player:
		pass
	
	# attack states
	if Input.is_action_just_pressed("Slash"):
		Transitioned.emit(self, "SilentKnightSlash")
	elif Input.is_action_just_pressed("Stab"):
		Transitioned.emit(self, "SilentKnightStab")
	
	# move states
	if ((direction > 0 or Input.is_action_pressed("move_right")) or (direction < 0 or Input.is_action_pressed("move_left"))) and player.is_on_floor():


		Transitioned.emit(self, "SilentKnightMove")
	
	elif Input.is_action_just_pressed("jump") and player.is_on_floor():

		Transitioned.emit(self, "SilentKnightJump")
	
	elif !player.is_on_floor():

		Transitioned.emit(self, "SilentKnightFall")
	
	else:

		Transitioned.emit(self, "SilentKnightIdle")
