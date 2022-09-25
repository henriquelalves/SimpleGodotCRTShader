extends ColorRect

onready var glitch_loop = false
onready var fun = null

func _ready():
	$GlitchAnimation.connect("animation_finished", self, "_on_animation_finished")

func _on_animation_finished(anim):
	if anim == "Glitch" and glitch_loop:
		$GlitchAnimation.play("GlitchLoop")

func start_glitch_loop():
	$GlitchAnimation.play("GlitchLoop")
	glitch_loop = true

func tween(fun : FuncRef, force = false):
	if not force and $GlitchAnimation.is_playing() and $GlitchAnimation.current_animation == "Glitch": return
	$GlitchAnimation.play("Glitch")
	self.fun = fun

func call_funcref():
	if fun: fun.call_func()
