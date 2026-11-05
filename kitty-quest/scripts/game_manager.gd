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

func add_yarn():
	yarn += 1
	print("yarning is yarn ", yarn)

func check_yarn():
	return yarn

func remove_yarn(remove):
	yarn -= remove
