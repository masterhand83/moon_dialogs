extends GraphEdit
onready var DialogNodeResource= preload('res://dialog_node/dialog_node.tscn')

func add_dialog():
    var dialog_node = DialogNodeResource.instance()
    add_child(dialog_node, true)
