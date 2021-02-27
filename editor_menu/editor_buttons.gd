extends VBoxContainer
signal add_dialog()
signal add_start_dialog()
signal add_action()
signal add_event()
signal return_to_menu()


func _on_ReturnEventButton_pressed() -> void:
    emit_signal('return_to_menu')
