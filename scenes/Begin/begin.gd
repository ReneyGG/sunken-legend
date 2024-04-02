extends Control

@export var next : PackedScene

var flag := false

func _ready():
	pass # Replace with function body.

func _on_texture_button_pressed():
	if flag:
		return
	flag = true
	$Click.play()
	Transition.change_scene(next)
