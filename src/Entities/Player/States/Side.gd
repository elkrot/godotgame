extends PlayerState

#/*Side*/
func unhandled_input(event: InputEvent) -> void:
	print(_parent.name)
	_parent.unhandled_input(event)
	
	
func physics_process(delta: float) -> void:
	_parent.physics_process(delta)

	if (_parent.direction =="RIGHT" and player.transform.origin.x<10):
		player.move_and_slide(Vector3(0.5,0,0),Vector3.UP)
		
		
	if (_parent.direction =="LEFT" and player.transform.origin.x>-10):
		player.move_and_slide(Vector3(-0.5,0,0),Vector3.UP)

	if player.is_on_line():
		_state_machine.transition_to("Move/Idle")
	


func enter(msg: Dictionary = {}) -> void:
	match msg:
		{"direction": var d}:			
			skin.transition_to(Mannequiny.States.RUN)
			_parent.direction = d
	_parent.enter()


func exit() -> void:
	_parent.exit()
