extends Spatial
var monster = preload("../Entities/Enemies/Enemy.tscn")


func _ready() -> void:
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$EnemyTimer.start()


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





func _on_EnemyTimer_timeout():
	var clone = monster.instance()	
	var x= (randi()%3)*6 - 6;
	clone.global_transform .origin = Vector3(x,0,-30)	
	clone.connect("dead", self, "_on_monster_dead")
	get_node(".").add_child(clone)


func _on_homewall_hit():
	pass # Replace with function body.
