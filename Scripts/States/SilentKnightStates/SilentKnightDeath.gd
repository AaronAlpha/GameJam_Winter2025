extends SilentKnight_States

class_name SilentKnightDeath


func Enter():
	
	# depending on dir
	# we switch on the left or right death animation
	if direction > 0 or Input.is_action_pressed("move_right"): # moving right
		$"../../AnimatedSprite2D".visible = false
		$"../../L_AnimatedSprite2D".visible = true
		$"../../L_AnimatedSprite2D".play("death_animation")
		
	elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
		$"../../AnimatedSprite2D".visible = false
		$"../../R_AnimatedSprite2D".visible = true
		$"../../R_AnimatedSprite2D".play("death_animation")
	
	# disabling the collision shapes
	$"../../CollisionShape2D".visible = false
	$"../../CollisionShape2D".disabled = true
	$"../../Crouch_CollisionShape2D".visible = false
	$"../../Crouch_CollisionShape2D".disabled = true

func Update(delta : float):
	get_tree().change_scene_to_file("res://Scenes/game_over_control.tscn")

func PhysicsUpdate(delta : float):
	pass
