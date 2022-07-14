extends Node
class_name State,"res://assets/icons/state.svg"
"""
State interface to use in Hierarchical State Machines.
The lowest leaf tries to handle callbacks, and if it can't, it delegates the work to its parent.
It's up to the user to call the parent state's functions, e.g. `_parent.physics_process(delta)`
Use State as a child of a StateMachine node.
"""


onready var _state_machine: = _get_state_machine(self)

var _parent: State = null


func _ready() -> void:
	yield(owner, "ready")
	var parent: = get_parent()
	if not parent.is_in_group("state_machine"):
		_parent = parent


func unhandled_input(event: InputEvent) -> void:
	return


func process(delta: float) -> void:
	return


func physics_process(delta: float) -> void:
	return


func enter(msg: Dictionary = {}) -> void:
	return


func exit() -> void:
	return


func _get_state_machine(node: Node) -> Node:
	if node != null and not node.is_in_group("state_machine"):
		return _get_state_machine(node.get_parent())
	return node

