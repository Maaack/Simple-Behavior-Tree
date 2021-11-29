class_name SimpleBehaviorTreeState
extends Node

enum BTNodeState {
	FAILURE,
	SUCCESS,
	RUNNING,
}

var state: int setget set_state

func succeed() -> bool:
	state = BTNodeState.SUCCESS
	return true

func fail() -> bool:
	state = BTNodeState.FAILURE
	return false

func set_state(rhs: int) -> bool:
	assert(false, "use succeed() or fail()")
	return false

func run():
	state = BTNodeState.RUNNING

func succeeded() -> bool:
	return state == BTNodeState.SUCCESS

func failed() -> bool:
	return state == BTNodeState.FAILURE

func running() -> bool:
	return state == BTNodeState.RUNNING

func get_state_string() -> String:
	match state:
		BTNodeState.SUCCESS:
			return "success"
		BTNodeState.FAILURE:
			return "failure"
		BTNodeState.RUNNING:
			return "running"
	return ""
