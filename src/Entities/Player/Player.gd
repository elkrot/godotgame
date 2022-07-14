tool
extends KinematicBody
class_name Player
"""
Helper class for the Player scene's scripts to be able to have access to the
camera and its orientation.
"""


#onready var camera: CameraRig = $CameraRig
onready var skin: Mannequiny = $Mannequiny
onready var state_machine: StateMachine = $StateMachine
var bullet_scene = preload("res://src/Entities/Player/Weapons/Bullet.tscn")

var health = 0

func fire_weapon():
	var clone = bullet_scene.instance()
	#clone.global_transform.origin =  Vector3(transform.origin.x,0,-6)	
	get_node("..").add_child(clone)
	
func _on_player_fire():
	fire_weapon()

func _ready():
	self.transform.origin = Vector3(-6,0,0)
	health = 10
	get_node("..").get_node("HUD").connect("player_fire", self, "_on_player_fire")
	
func is_on_line()->bool:
	print(self.transform.origin.x )
	return self.transform.origin.x >0 and self.transform.origin.x<0.01
#func _get_configuration_warning() -> String:
#	return "Missing camera node" if not camera else ""
