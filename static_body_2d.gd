extends StaticBody2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = position.x +3


func _on_reset_area_entered(area: Area2D) -> void:
	position.x = -36.0 
	print("asda")
	pass # Replace with function body.
