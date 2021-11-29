tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("TreeRoot", "Node", preload("nodes/sbt_root.gd"), preload("res://addons/simple_behavior_tree/icons/tree-roots.svg"))
	add_custom_type("TreeSequence", "Node", preload("nodes/sbt_sequence.gd"), preload("res://addons/simple_behavior_tree/icons/sequence.svg"))
	add_custom_type("TreeSelector", "Node", preload("nodes/sbt_selector.gd"), preload("res://addons/simple_behavior_tree/icons/selector.svg"))
	add_custom_type("TreeParallel", "Node", preload("nodes/sbt_parallel.gd"), preload("res://addons/simple_behavior_tree/icons/parallel.svg"))
	add_custom_type("TreeCondition", "Node", preload("nodes/sbt_condition.gd"), preload("res://addons/simple_behavior_tree/icons/check-mark.svg"))
	add_custom_type("TreeAction", "Node", preload("nodes/sbt_action.gd"), preload("res://addons/simple_behavior_tree/icons/play-button.svg"))
	add_custom_type("TreeLog", "Node", preload("nodes/sbt_log.gd"), preload("res://addons/simple_behavior_tree/icons/notebook.svg"))
	add_custom_type("TreeWait", "Node", preload("nodes/sbt_wait.gd"), preload("res://addons/simple_behavior_tree/icons/hourglass.svg"))



func _exit_tree():
	remove_custom_type("TreeRoot")
	remove_custom_type("TreeSequence")
	remove_custom_type("TreeSelector")
	remove_custom_type("TreeParallel")
	remove_custom_type("TreeCondition")
	remove_custom_type("TreeAction")
	remove_custom_type("TreeLog")
	remove_custom_type("TreeWait")
