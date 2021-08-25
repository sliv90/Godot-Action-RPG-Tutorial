extends Node

export(int) var max_health = 1
onready var health = max_health setget set_health

signal no_heatlh
signal health_changed()

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_heatlh")
