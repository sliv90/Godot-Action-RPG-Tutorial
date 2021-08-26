extends Node

export(int) var max_health = 1 setget set_max_health
onready var health = max_health setget set_health

signal no_heatlh
signal health_changed()
signal max_health_changed()

func _ready():
	self.health = max_health

func set_health(value):
	health = value
	health = min(health, max_health)
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_heatlh")

func set_max_health(value):
	max_health = value
	#health = min(health, max_health) wasss?
	emit_signal("max_health_changed", max_health)
