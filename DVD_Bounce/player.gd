extends KinematicBody2D

signal hit(player)
signal clicked()
#CONSTANTS


const SPEED = 130
 

#VARIABLES

var num = 0
var x = 0
var score = 0
var centre = Vector2(512, 300)
var direction = Vector2(1, 1)
var velocity = Vector2.ZERO
var timer = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	position = centre
	
func _physics_process(delta):
	velocity = direction *  SPEED
	move_and_slide(velocity)
	$Label.set_text(str(score))
	if Input.is_action_just_pressed("click"):
		click()
		
func click():
	emit_signal("clicked")
	
	
func _on_RigidBody2D_body_entered(body):
	direction *= Vector2(1, -1)
	score += 1
	audio(0.0)
	onBounce(body)
	
func _on_Area2D_body_entered(body):
	direction *= Vector2(-1, 1) # Replace with function body.
	score += 1
	audio(0.0)
	onBounce(body)
	
func _on_Area2D2_body_entered(body):
	direction *= Vector2(1, -1) # Replace with function body.
	score += 1
	audio(0.0)
	onBounce(body)
	
func _on_Area2D3_body_entered(body):
	direction *= Vector2(-1, 1) 
	score += 1
	audio(0.0)
	onBounce(body)
	
func _on_Button_pressed():
	audio(0.0)
	
func audio(a):
	$AudioStreamPlayer.play(a)
	
func onBounce(player):
	 emit_signal("hit", self)
	
	
	
	
	
	
	
	
