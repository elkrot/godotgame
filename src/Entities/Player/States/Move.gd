extends PlayerState

export var max_speed: = 50.0
export var move_speed: = 500.0
export var gravity = -80.0
export var jump_impulse = 25

var velocity: = Vector3.ZERO
var direction:= ""


func unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("move_right"):
		_state_machine.transition_to("Move/Side", { direction = "RIGHT" })
	if event.is_action_pressed("move_left"):
		_state_machine.transition_to("Move/Side", { direction = "LEFT" })	


func physics_process(delta: float) -> void:
	pass
#	if (direction=="RIGHT" ):
#		skin.global_translate(Vector3(6,0,0))
		
		
#	var input_direction: = get_input_direction()
#
#	var move_direction: = input_direction
#	if move_direction.length() > 1.0:
#		move_direction = move_direction.normalized()
#	move_direction.y = 0
#	skin.move_direction = move_direction
#
#	# Rotation
#	if move_direction:
#		player.look_at(player.global_transform.origin + move_direction, Vector3.UP)
#
#	# Movement
#	velocity = calculate_velocity(velocity, move_direction, delta)
#	velocity = player.move_and_slide(velocity, Vector3.UP)


#static func get_input_direction() -> Vector3:
#	return Vector3(
#			Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
#			0,
#			Input.get_action_strength("move_back") - Input.get_action_strength("move_front")
#		)
#
#
#func calculate_velocity(velocity_current: Vector3, move_direction: Vector3, delta: float) -> Vector3:
#	var velocity_new: = velocity_current
#
#	velocity_new = move_direction * delta * move_speed
#	if velocity_new.length() > max_speed:
#		velocity_new = velocity_new.normalized() * max_speed
#	velocity_new.y = velocity_current.y + gravity * delta
#
#	return velocity_new

