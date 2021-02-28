extends GraphEdit
onready var DialogNodeResource = preload('res://dialog_node/base_dialog_node.tscn')
onready var StartDialogNodeRes = preload('res://dialog_node/start_dialog_node.tscn')
onready var FinalDialogNodeRes = preload('res://dialog_node/final_dialog_node.tscn')

func add_dialog():
    var dialog_node = DialogNodeResource.instance()
    add_child(dialog_node, true)


func add_start_dialog():
    var dialog_node = StartDialogNodeRes.instance()
    add_child(dialog_node, true)


func add_final_dialog():
    var dialog_node = FinalDialogNodeRes.instance()
    add_child(dialog_node, true)


func _on_EditorBoard_connection_request(
        from: String,
        from_slot: int,
        to: String,
        to_slot: int) -> void:
    connect_node(from, from_slot, to, to_slot)
