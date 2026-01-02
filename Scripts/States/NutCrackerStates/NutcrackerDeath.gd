extends State

class_name NutcrackerDeath

@export var enemy : CharacterBody2D


func Enter():
	enemy.velocity = Vector2.ZERO
	$"../../AnimatedSprite2D".stop()
	$"../../Attack_AnimatedSprite2D".play("death_animation")

func Update(delta):
	pass

func PhysicsUpdate(delta):
	pass
