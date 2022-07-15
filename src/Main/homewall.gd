extends KinematicBody

signal hit

func on_enemy():
	emit_signal("hit")
