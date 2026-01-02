extends SilentKnight_States

class_name SilentKnightStab


func Enter():
	$"../../AnimatedSprite2D".play("stab_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
