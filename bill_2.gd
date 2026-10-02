extends StaticBody2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$StaticBody2D.position.x = $StaticBody2D.position.x +3
	


func _on_area_2d_body_entered(body) -> void:
	print("asda")
