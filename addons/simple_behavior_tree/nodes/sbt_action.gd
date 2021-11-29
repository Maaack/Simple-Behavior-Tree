class_name SimpleBehaviorTreeAction, "../icons/play-button.svg"
extends SimpleBehaviorTreeLeaf

export(String) var method_name : String

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	var result
	
	if agent.has_method(method_name):
		agent.call(method_name)
		return succeed()
	
	return fail()
