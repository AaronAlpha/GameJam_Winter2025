extends SilentKnight_States

class_name SilentKnightJump



func Enter():
	$"../../AnimatedSprite2D".play("jump_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	
	if player:
		movement(delta)
	
	# changing to attack states if the case
	attackStates()
