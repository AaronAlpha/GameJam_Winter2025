extends SilentKnight_States

class_name SilentKnightCrouch


func Enter():
	$"../../AnimatedSprite2D".play("crouch_animation")
	
	$"../../LeftFacing_CollisionShape2D".visible = false
	$"../../LeftFacing_CollisionShape2D".disabled = true
	$"../../RightFacing_CollisionShape2D".visible = false
	$"../../RightFacing_CollisionShape2D".disabled = true
	
	$"../../LeftFacing_Crouching_CollisionShape2D".visible = true
	$"../../LeftFacing_Crouching_CollisionShape2D".disabled = false
	$"../../RightFacing_Crouching_CollisionShape2D".visible = false
	$"../../RightFacing_Crouching_CollisionShape2D".disabled = true
	
	SK_facingDir()

func Update(delta : float):
	SK_facingDir()
	

func PhysicsUpdate(delta : float):
	if player:
		movement(delta)
	
	attackStates() # condensed func that includes code above - refer SK_States.gd for code
	
