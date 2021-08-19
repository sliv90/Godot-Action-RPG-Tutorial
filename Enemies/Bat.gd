extends KinematicBody2D

export(int) var FRICTION = 200
onready var stats = $Stats

func _ready():
	print(stats.max_health)
	print(stats.health)

var knockback = Vector2.ZERO

func _physics_process(delta):
	knockback = knockback.move_toward(Vector2.ZERO, FRICTION * delta)
	knockback = move_and_slide(knockback)	

func _on_HurtBox_area_entered(area):
	stats.health -= area.damage
	knockback = area.knockback_vector * 120

func _on_Stats_no_heatlh():
	queue_free()
