extends CanvasLayer

@onready var animation = get_node("AnimationPlayer")

func _ready():
	animation.play("fade_in")

func change_scene(scene):
	animation.play("fade_out")
	await animation.animation_finished
	get_tree().change_scene_to_packed(scene)
	animation.play("fade_in")
