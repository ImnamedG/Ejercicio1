extends AnimationPlayer

func _ready() -> void:
	$"../AnimatedSprite2D".play("chomp")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"../..".is_colliding() && animation_finished:
		play("bite")
		$"../AnimatedSprite2D".play("chomp")

	pass
