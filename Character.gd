extends AnimatedSprite2D

var moving = 0

func _ready():
	play()
	animation = "idle"

func _process(delta):
	if (Input.is_key_pressed(KEY_LEFT)):
		moving = -1
	elif (Input.is_key_pressed(KEY_RIGHT)):
		moving = 1
	else:
		moving = 0
	
	if (moving == 0):
		animation = "idle"
	else:
		animation = "run"
		scale = Vector2(moving, 1) * Vector2(abs(scale.x), scale.y)
		position += Vector2(moving * 200 * delta, 0)
