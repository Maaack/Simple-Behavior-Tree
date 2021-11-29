class_name SimpleBehaviorTreeRoot, "../icons/tree-roots.svg"
extends SimpleBehaviorTreeNode

var _blackboard : Dictionary = {}

onready var child_node = get_child(0) as SimpleBehaviorTreeNode

func _ready() -> void:
	assert(get_child_count() == 1, "simple behavior tree can only have one root node")

func get_blackboard():
	return _blackboard

func tick(agent: Node, blackboard: Dictionary = get_blackboard()) -> void:
	_blackboard = blackboard.duplicate()
	var tick_result = child_node.tick(agent, blackboard)
	
	if tick_result is GDScriptFunctionState:
		yield(tick_result, "completed")

	if child_node.succeeded():
		return succeed()
	
	return fail()
