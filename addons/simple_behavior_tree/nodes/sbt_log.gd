class_name SimpleBehaviorTreeLog, "../icons/notebook.svg"
extends SimpleBehaviorTreeLeaf

export(String, MULTILINE) var log_message : String

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	print(log_message)
	return succeed()
