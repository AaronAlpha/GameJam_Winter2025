extends SilentKnight_States

class_name SilentKnightDamage



func Enter():
	$"../../AnimatedSprite2D".play("damage_animation")

func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
