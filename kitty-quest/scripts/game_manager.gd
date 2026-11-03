extends Node

var keys = 0
var yarn = 0

func add_key():
	print("key +1")
	keys += 1

func check_keys():
	return keys >= 1

func remove_key():
	keys -= 1
