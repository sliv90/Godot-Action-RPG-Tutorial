extends Camera2D

onready var topLeftPosition = $Limits/TopLeftPosition2D
onready var bottomRightPosition = $Limits/BottomRightPosition2D


func _ready():
	limit_top = topLeftPosition.position.y
	limit_left = topLeftPosition.position.x
	limit_bottom = bottomRightPosition.position.y
	limit_right = bottomRightPosition.position.x 
