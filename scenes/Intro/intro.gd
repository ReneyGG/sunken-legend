extends Control

var clicks := 0

func _ready():
	$AnimationPlayer.play("intro")

func _on_book_button_pressed():
	if clicks == 8:
		$Open.play()
	elif clicks > 8:
		$BookButton.disabled = true
		intro_2()
		return
	else:
		$Click.play()
		$Click.pitch_scale += 0.04
	clicks += 1
	$BookButton/AnimationPlayer.play("pressed")

func intro_2():
	$Label.visible_ratio = 0
	$Label2.visible_ratio = 0
	$Label.text = ""
	$Label2.text = ""
	$AnimationPlayer.play("intro_2")
