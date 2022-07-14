extends Spatial

func _ready() -> void:
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass


#func _input(event: InputEvent) -> void:
#	if event.is_action_pressed("click"):
#		if Input.get_mouse_mode() != Input.MOUSE_MODE_CAPTURED:
#			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#	if event.is_action_pressed("toggle_mouse_captured"):
#		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
#			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
#		else:
#			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#		get_tree().set_input_as_handled()
