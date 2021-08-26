extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var heartUIFull = $HeartUIFull
onready var heartUIEmpty = $HeartUIEmpty
onready var textureWidth = heartUIFull.texture.get_size().x

func _ready():
	self.max_hearts = PlayerStats.max_health
	self.hearts = PlayerStats.health
	PlayerStats.connect("health_changed", self, "set_hearts")
	PlayerStats.connect("max_health_changed", self, "set_max_hearts")
	
func set_hearts(value):
	hearts = value
	if heartUIFull != null:
		heartUIFull.rect_size.x = hearts * textureWidth
	
func set_max_hearts(value):
	hearts = value
	if heartUIEmpty != null:
		heartUIEmpty.rect_size.x = hearts * textureWidth
