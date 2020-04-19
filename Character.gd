extends Sprite

var animation_player
var moving = 0

func _ready():
	animation_player = get_node("AnimationPlayer")
	set_fixed_process(true)

func _fixed_process(delta):
	if (Input.is_key_pressed(KEY_LEFT)):
		moving = -1
	elif (Input.is_key_pressed(KEY_RIGHT)):
		moving = 1
	else:
		moving = 0
	
	if (moving == 0):
		if (animation_player.get_current_animation() != "idle"):
			animation_player.play("idle")
	else:
		if (animation_player.get_current_animation() != "run"):
			animation_player.play("run")
		set_scale(Vector2(moving * abs(get_scale().x), get_scale().y))
		set_pos(get_pos() + Vector2(200 * delta * moving, 0))
	