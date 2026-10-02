extends CharacterBody2D

var MUERTE = false
var speed = 50.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
		$AnimatedSprite2D.play("Move")

func _physics_process(delta: float) -> void:
	if is_on_wall():
		velocity.x  *= -1
	velocity.y = 50
	
	if not $AbajoDer.is_colliding():
		velocity.x = -speed
	if not $AbajoIzq.is_colliding():
		velocity.x = speed
		
	

	
		
	move_and_slide()
