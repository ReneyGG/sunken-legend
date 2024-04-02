extends Control

@export var next : PackedScene

var pressed := false

func _ready():
	$AnimationPlayer.play("fin")

func _on_texture_button_pressed():
	if pressed:
		return
	pressed = true
	$End.play()
	Transition.change_scene(next)
