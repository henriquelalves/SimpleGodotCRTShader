@tool
extends ColorRect

const ShaderScreenMaterial: ShaderMaterial = preload("res://addons/crt_shader/ShaderScreen.material")


func _ready() -> void:
	if material == null:
		material = ShaderScreenMaterial
	
	item_rect_changed.connect(_update_screen_parameters)
	_update_screen_parameters()


func _update_screen_parameters():
	var shader_material : ShaderMaterial = material
	shader_material.set_shader_parameter("screen_width", size.x)
	shader_material.set_shader_parameter("screen_height", size.y)
