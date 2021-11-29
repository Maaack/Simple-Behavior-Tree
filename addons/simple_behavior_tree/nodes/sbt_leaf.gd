class_name SimpleBehaviorTreeLeaf
extends SimpleBehaviorTreeNode

func _ready():
	assert(get_child_count() == 0, "a leaf cannot have children")

