extends AnimatedSprite

func _ready():
	connect("animation_finished", self, "_on_AnimationFinished")
	play("Animate")


func _on_AnimationFinished():
	queue_free()
