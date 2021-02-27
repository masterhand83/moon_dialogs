extends GraphNode
var choice_inputs = {}
var choice_count = 0;

func _on_DialogNode_close_request() -> void:
    self.clear_all_slots()
    self.queue_free()




func _on_ChoiceMenu_add_choice() -> void:
    var line_edit = LineEdit.new()
    line_edit.placeholder_text = 'choice'
    choice_inputs[str(choice_count)] = line_edit
    add_child(line_edit, true)
    choice_count += 1
    update()
    force_update_transform()
