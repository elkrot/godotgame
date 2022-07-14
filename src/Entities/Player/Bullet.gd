extends KinematicBody

var dir 
var SPEED = 25
func _ready():
	dir = global_transform.basis.z.normalized()*-1

func _physics_process(delta):
	var o = move_and_collide(SPEED*dir*delta)
	if o:
		if o.collider.has_method('on_bullet'):
			o.collider.on_bullet()
			queue_free()
