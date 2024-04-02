extends Control

@export var next : PackedScene

var pressed := false

func _ready():
	$AnimationPlayer.play("open")

func _on_texture_button_pressed():
	if pressed:
		return
	pressed = true
	Transition.change_scene(next)
