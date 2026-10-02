extends AnimationPlayer
func _ready() -> void:
	play("move")

func _on_animation_finished(anim_name: StringName) -> void:
	play("move")
