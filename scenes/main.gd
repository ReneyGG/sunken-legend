extends Control

@export var max_tile : int
@export var solved := false
@export var poem : PackedScene

@onready var grid = get_node("GridContainer").get_children()
@onready var click_sfx = get_node("Click")

func _ready():
	pass

func _on_texture_button_pressed():
	if solved:
		return
	click_sfx.play()
	if check():
		solved = true
		get_node("Fin").play()
		await get_node("Fin").finished
		Transition.change_scene(poem)

func check():
	var og = grid[0].tile
	for i in grid:
		if og != i.tile:
			return false
		og = i.tile
	return true
