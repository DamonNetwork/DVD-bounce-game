extends Node2D

var explosion_scene = load("res://explosion.tscn")


func _ready():
	position = get_viewport().get_mouse_position()
	
func _physics_process(delta):
	pass
	


func _on_barrel_body_entered(body):
	var explosion_instance = explosion_scene.instance()
	explosion_instance.position = self.position
	get_parent().add_child(explosion_instance)               #ADD SIGNAL
	queue_free()
	
