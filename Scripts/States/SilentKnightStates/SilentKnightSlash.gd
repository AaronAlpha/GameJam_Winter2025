extends SilentKnight_States

class_name SilentKnightSlash

func Enter():
	$"../../AnimatedSprite2D".play("slash_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
