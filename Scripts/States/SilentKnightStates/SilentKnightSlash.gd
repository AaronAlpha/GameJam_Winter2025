extends SilentKnight_States

class_name SilentKnightSlash

func Enter():
	attackAnimations("slash_animation")
	
	enemy = get_tree().get_first_node_in_group("MiniBosses")
func Update(delta : float):
	pass

func PhysicsUpdate(delta : float):
	pass
