extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var label = $Label

func _ready():
	self.max_hearts = PlayerStats.max_health
	self.hearts = PlayerStats.health
	label.text = "HP = " + str(hearts)

func set_hearts(value):
	hearts = value
	label.text = "HP = " + str(hearts)
	
func set_max_hearts(value):
	hearts = value
	PlayerStats.connect("health_changed", self, "set_hearts")
