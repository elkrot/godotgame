extends KinematicBody


const SPEED =5
signal dead
var dir 

func _physics_process(delta):
	var o = move_and_collide(dir*delta*SPEED)
	if o:
		if o.collider.has_method('on_enemy'):
			o.collider.on_enemy()
			queue_free()
			
func _ready():
	get_node("CollisionShape/Monster1/Armature/AnimationPlayer").play("ArmatureAction")
	add_to_group("enemies")
	dir = global_transform.basis.z.normalized()*1
	
func on_bullet():
	emit_signal("dead")
	queue_free()

