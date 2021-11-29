extends Node

var hunger : int = 0
var thirst : int = 0
var timer : int = 0
var exhaustion : int = 0
var inventory : Array = []

func _process(delta: float) -> void:
	timer += 1
	hunger += 1
	thirst += 1
	exhaustion += 1
	$TreeRoot.tick(self)

func get_thirst_tolerance():
	return 200

func is_thirsty():
	return thirst > get_thirst_tolerance()

func get_hunger_tolerance():
	return 500

func is_hungry():
	return hunger > get_hunger_tolerance()

func is_exhausted():
	return exhaustion > 2000

func eat_food():
	inventory.erase("food")
	hunger = 0

func drink_water():
	inventory.erase("water")
	thirst = 0

func sleep():
	exhaustion = 0

func has_food():
	return "food" in inventory

func has_water():
	return "water" in inventory

func add_food():
	inventory.append("food")

func add_water():
	inventory.append("water")
