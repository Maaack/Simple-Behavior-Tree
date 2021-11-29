class_name SimpleBehaviorTreeSequence, "../icons/sequence.svg"
extends SimpleBehaviorTreeNode

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	var result
	
	for child in get_children():
		result = child.tick(agent, blackboard)
		
		if result is GDScriptFunctionState:
			result = yield(result, "completed")
		
		if child.failed():
			return fail()
	
	return succeed()
