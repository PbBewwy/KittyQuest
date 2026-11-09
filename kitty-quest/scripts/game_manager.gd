extends Node

@onready var playerui: CanvasLayer = $"../Player/Camera2D/CanvasLayer"

var keys = 0
var yarn = 0

func add_key():
	keys += 1
	playerui.update_keys(keys)

func check_keys():
	return keys >= 1

func remove_key():
	keys -= 1
	playerui.update_keys(keys)


func add_yarn():
	yarn += 1
	playerui.update_yarn(yarn)

func check_yarn():
	return yarn

func remove_yarn(remove):
	yarn -= remove
	playerui.update_yarn(yarn)
