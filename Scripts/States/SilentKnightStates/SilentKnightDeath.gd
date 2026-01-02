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
		

func Update(delta : float):
	get_tree().change_scene_to_file("res://Scenes/UI Scenes/MainMenu_Control.tscn")

func PhysicsUpdate(delta : float):
	# changing the visiblity of the player - signaling its death
	if player.visible:
		player.visible = false
