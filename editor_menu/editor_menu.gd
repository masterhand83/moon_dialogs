extends View




func _on_EditorButtons_return_to_menu() -> void:
    emit_signal('change_view', 'main')


func _on_EditorButtons_add_dialog() -> void:
    $EditorBoard.add_dialog()
