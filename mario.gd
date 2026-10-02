extends CharacterBody2D

var MUERTO = false
var muertey = 0
const SPEED = 100.0
const JUMP_VELOCITY = -320.0






func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if not MUERTO:
		# Handle jump.
		

		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
		if Input.is_action_just_pressed("ui_up") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			$AnimatedSprite2D.play("jump")
		elif Input.is_action_pressed("ui_right"):
			velocity.x = SPEED 
			if velocity.y == 0:
				$AnimatedSprite2D.play("walk")
			$AnimatedSprite2D.flip_h = false
		elif Input.is_action_pressed("ui_left"):
			velocity.x = -SPEED 
			if velocity.y == 0:
				$AnimatedSprite2D.play("walk")
			$AnimatedSprite2D.flip_h = true
		else:
			if velocity.y == 0:
				$AnimatedSprite2D.play("idle")
			velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		$CollisionShape2D.disabled = true
		if velocity.y > 600:
			get_tree().quit()
	move_and_slide()
	



func _on_areamuerte_body_entered(body: Node2D) -> void:
	if body == self:
		if not MUERTO: 
			muertey = position.y
			velocity.y = -300
			velocity.x = 0
			$Camera2D.set_limit(SIDE_TOP, muertey)
			$Camera2D.set_limit(SIDE_BOTTOM, muertey)
			$AnimatedSprite2D.play("death")
			MUERTO = true
	
	pass # Replace with function body.
