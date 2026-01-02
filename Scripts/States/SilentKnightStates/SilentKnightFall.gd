extends SilentKnight_States

class_name SilentKnightFall


func Enter():
	$"../../AnimatedSprite2D".play("fall_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
