extends VBoxContainer
signal add_choice()
signal delete_choice()


func _on_AddChoiceButton_pressed() -> void:
    emit_signal('add_choice')


func _on_DelChoiceButton_pressed() -> void:
    emit_signal('delete_choice')
