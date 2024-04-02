extends Control

@export var next : PackedScene

func _ready():
	pass # Replace with function body.

func _on_texture_button_pressed():
	Transition.change_scene(next)
