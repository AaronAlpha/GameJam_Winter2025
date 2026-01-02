extends State

class_name SilentKnight_States

@export var player : CharacterBody2D
@export var idle_move_speed := 20 # for idle_state
@export var move_speed := 100 # for move_state
@export var jumpSpeed : int = -100 # for jump_state


var direction := Input.get_axis("move_left", "move_right") # made this a class_var so that can be 
# accessed in other classes
func SK_facingDir():
	if direction > 0 or Input.is_action_pressed("move_right"): # moving right
		$"../../AnimatedSprite2D".flip_h = false
		# the animation and collision should be 'on' on the left of the y-axis
		$"../../LeftFacing_CollisionShape2D".visible = true
		$"../../LeftFacing_CollisionShape2D".disabled = false
		# the animation and collision should be 'off' on the right of the y-axis
		$"../../RightFacing_CollisionShape2D".visible = false
		$"../../RightFacing_CollisionShape2D".disabled = true
			 
	elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
		$"../../AnimatedSprite2D".flip_h = true
		# the animation and collision should be 'off' on the left of the y-axis
		$"../../LeftFacing_CollisionShape2D".visible = false
		$"../../LeftFacing_CollisionShape2D".disabled = true
		# the animation and collision should be 'on' on the right of the y-axis
		$"../../RightFacing_CollisionShape2D".visible = true
		$"../../RightFacing_CollisionShape2D".disabled = false
	




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
