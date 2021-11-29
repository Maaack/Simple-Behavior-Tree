class_name SimpleBehaviorTreeParallel, "../icons/parallel.svg"
extends SimpleBehaviorTreeNode

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	
	for child in get_children():
		child.tick(agent, blackboard)
	
	return succeed()

