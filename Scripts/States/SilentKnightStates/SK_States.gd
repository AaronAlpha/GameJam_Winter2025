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
			 
	elif direction < 0 or Input.is_action_pressed("move_left"): # moving left
		$"../../AnimatedSprite2D".flip_h = true


func movement(delta):
	if direction > 0 or Input.is_action_pressed("move_right"):
		
		# if it does exist: set velocity...
		player.velocity.x = direction * move_speed
		# should only be in x-axis
	
	elif direction < 0 or Input.is_action_pressed("move_left"):
		# if it does exist: set velocity...
		player.velocity.x = direction * move_speed
		# should only be in x-axis
	else:
		player.velocity.x = move_toward(player.velocity.x, 0, move_speed)


func attackStates():	
	# attack change states
	if Input.is_action_just_pressed("Slash"):
		Transitioned.emit(self, "SilentKnightSlash")
	elif Input.is_action_just_pressed("Stab"):
		Transitioned.emit(self, "SilentKnightStab")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
