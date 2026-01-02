extends CharacterBody2D

var attackInstance_Stab = NutcrackerStab.new()

func _ready() -> void:
	pass
	


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta


	move_and_slide()


## these 2 signals are used to check if the player entered the area
#
#func _on_hit_box_area_2d_body_entered(body: Node2D) -> void:
	#if body.is_in_group("Player"):
		#if $StateMachine_Node.current_state.name == "NutcrackerFollow":
			#$StateMachine_Node.on_child_transition("NutcrackerFollow", "NutcrackerSlash")
#
#
#func _on_hit_box_area_2d_body_exited(body: Node2D) -> void:
	#if body.is_in_group("Player"):
		#if $StateMachine_Node.current_state.name == "NutcrackerSlash":
			#$StateMachine_Node.on_child_transition("NutcrackerSlash", "NutcrackerFollow")
