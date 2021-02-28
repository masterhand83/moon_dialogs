extends VBoxContainer
signal add_start_dialog()
signal add_dialog()
signal add_final_dialog()
signal add_action()
signal add_event()
signal return_to_menu()


func _on_ReturnEventButton_pressed() -> void:
    emit_signal('return_to_menu')


func _on_AddDialogButton_pressed() -> void:
    emit_signal('add_dialog')


func _on_AddStartDialogButton_pressed() -> void:
    emit_signal('add_start_dialog')


func _on_AddFinalDialogButton_pressed() -> void:
    emit_signal('add_final_dialog')
