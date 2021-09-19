extends Node2D








func _ready():
	$CPUParticles2D.one_shot = true
	
func _physics_process(delta):
	if $CPUParticles2D.emitting == false:
		queue_free()
	

	
	


