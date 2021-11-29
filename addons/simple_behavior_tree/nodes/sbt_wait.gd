class_name SimpleBehaviorTreeWait, "../icons/hourglass.svg"
extends SimpleBehaviorTreeLeaf

export(float) var wait_time : float

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	yield(get_tree().create_timer(wait_time), "timeout")
	return succeed()
