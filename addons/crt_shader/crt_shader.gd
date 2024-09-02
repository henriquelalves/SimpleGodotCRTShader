@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("CRTScreen", "ColorRect", preload("res://addons/crt_shader/crt_screen.gd"), preload("res://addons/crt_shader/icon.png"))


func _exit_tree():
	remove_custom_type("CRTScreen")
