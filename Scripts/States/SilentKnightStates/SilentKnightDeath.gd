extends SilentKnight_States

class_name SilentKnightDeath


func Enter():
	$"../../AnimatedSprite2D".play("death_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
