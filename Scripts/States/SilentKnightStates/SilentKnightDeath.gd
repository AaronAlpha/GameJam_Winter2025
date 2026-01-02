extends SilentKnight_States

class_name SilentKnightDeath


func Enter():
	
	# depending on dir
	# we switch on the left or right death animation
	attackAnimations("death_animation")

func Update(delta : float):
	get_tree().change_scene_to_file("res://Scenes/game_over_control.tscn")

func PhysicsUpdate(delta : float):
	pass
