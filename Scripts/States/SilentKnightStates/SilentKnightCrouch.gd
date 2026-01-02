extends SilentKnight_States

class_name SilentKnightCrouch


func Enter():
	$"../../AnimatedSprite2D".play("crouch_animation")
	
	$"../../LeftFacing_CollisionShape2D".height = 10
	$"../../LeftFacing_CollisionShape2D".position.y = -6
	$"../../RightFacing_CollisionShape2D".height = 10
	$"../../RightFacing_CollisionShape2D".position.y = -6
	
	SK_facingDir()

func Update(delta : float):
	SK_facingDir()
		

func PhysicsUpdate(delta : float):
	pass
