class_name SimpleBehaviorTreeConditionCall, "../icons/check-mark.svg"
extends SimpleBehaviorTreeLeaf

export(String) var method_name : String
export(bool) var inverse : bool = false

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	var result
	
	if agent.has_method(method_name):
		result = agent.call(method_name)
		if inverse:
			result = not result
		if result:
			return succeed()
	
	return fail()
