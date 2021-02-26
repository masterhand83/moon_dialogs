extends View



func _on_NewProjectButton_pressed() -> void:
    emit_signal('change_view', 'editor')
