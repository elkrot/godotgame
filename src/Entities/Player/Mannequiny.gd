extends Spatial
class_name Mannequiny

enum States {IDLE, RUN, AIR, SIDE}

onready var _player: AnimationPlayer = $AnimationPlayer
onready var animation_tree: AnimationTree = $AnimationTree
onready var _playback: AnimationNodeStateMachinePlayback = animation_tree["parameters/playback"]

var move_direction: = Vector3.ZERO setget set_move_direction
#var is_moving: = false setget set_is_moving

func _ready() -> void:
	animation_tree.active = true


func set_move_direction(direction: Vector3) -> void:
	move_direction = direction
	animation_tree["parameters/move_ground/blend_position"] = direction.length()
	
#func set_is_moving(value: bool) -> void:
#	is_moving = value
#	animation_tree["parameters/conditions/is_moving"] = value

func transition_to(state_id: int) -> void:
	match state_id:
		States.IDLE:
			_playback.travel("idle")
			_player.play("idle")
		States.RUN:
			_playback.travel("move_ground")
			_player.play("run")
		States.SIDE:
			_playback.travel("move_ground")
		States.AIR:
			_playback.travel("jump")
		_:
			_playback.travel("idle")
