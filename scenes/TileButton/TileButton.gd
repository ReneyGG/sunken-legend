extends TextureButton

@export var tile : int
@export var connections : Array[Node]

@onready var sprite = get_node("AnimatedSprite2D")
@onready var main = get_parent().get_parent()

func _ready():
	if main.name == "Main0":
		sprite.animation = "puzzle0"
	elif main.name == "Main1":
		sprite.animation = "puzzle1"
	elif main.name == "Main2":
		sprite.animation = "puzzle2"
	elif main.name == "Main3":
		sprite.animation = "puzzle3"
	sprite.frame = tile

func _on_pressed():
	if main.solved:
		return
	change()
	for i in connections:
		i.change()

func change():
	get_node("AnimationPlayer").play("pressed")
	if tile == main.max_tile:
		tile = 0
	else:
		tile += 1
	sprite.frame = tile
