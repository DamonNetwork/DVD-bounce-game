extends Node2D

var explosion_scene = load("res://explosion.tscn")
var barrel_scene = load("res://barrel.tscn")

func _ready():
	pass


func _on_player_hit(player):
	var explosion_instance = explosion_scene.instance()
	explosion_instance.position = player.position
	add_child(explosion_instance)

	


func _on_player_clicked():
	var barrel_instance = barrel_scene.instance()
	add_child(barrel_instance)
