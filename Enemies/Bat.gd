extends KinematicBody2D

const FRICTION = 200
onready var stats = $Stats

func _ready():
	print(stats.max_health)
	print(stats.health)

var knockback = Vector2.ZERO

func _physics_process(delta):
	knockback = knockback.move_toward(Vector2.ZERO, FRICTION * delta)
	knockback = move_and_slide(knockback)
	

func _on_HurtBox_area_entered(area):
	stats.health -= 1
	if stats.health <= 0:
		queue_free()
	knockback = area.knockback_vector * 120
