extends Control

var clicks := 0
var next := false

func _ready():
	$BookButton/Sprite2D.visible = true
	$BookButton/Sprite2D2.visible = false
	$Label.text = "An old, sealed book has been found."
	$Label2.text = "A testament to Atlantis."
	$AnimationPlayer.play("intro")

func _on_book_button_pressed():
	if next:
		$Click.pitch_scale = 1.0
		$BookButton/AnimationPlayer.play("pressed")
		$Click.play()
		await $Click.finished
		get_tree().change_scene_to_file("res://scenes/Intro/choice.tscn")
	if clicks >= 8:
		$BookButton/AnimationPlayer.play("pressed")
		$BookButton/Sprite2D.visible = false
		$BookButton/Sprite2D2.visible = true
		$Open.play()
		$BookButton.disabled = true
		intro_2()
		return
	else:
		$Click.play()
		$Click.pitch_scale += 0.04
	clicks += 1
	$BookButton/AnimationPlayer.play("pressed")

func intro_2():
	next = true
	$Label.visible_ratio = 0
	$Label2.visible_ratio = 0
	$Label.text = "Written in graceful, dainty runes."
	$Label2.text = " Fate of the lost city."
	$AnimationPlayer.play("intro_2")
