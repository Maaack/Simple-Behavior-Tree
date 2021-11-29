class_name SimpleBehaviorTreeNode
extends SimpleBehaviorTreeState

signal tick(state)

func _tick(agent: Node, blackboard: Dictionary) -> bool:
	return succeed()

func tick(agent: Node, blackboard: Dictionary) -> bool:
	if running():
		return false
	run() 
	
	var result = _tick(agent, blackboard)
	if result is GDScriptFunctionState:
		assert(running(), "succeed() or fail() before yield()?")
		yield(result, "completed")
	assert(not running(), "returning succeed() or fail()?") 
	
	emit_signal("tick", succeeded())
	
	return succeeded()
