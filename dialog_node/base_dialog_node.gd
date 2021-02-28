extends GraphNode
const DEFAULT_COLOR = Color.white
const DEFAULT_PORT = 0
const NEXT_LABEL_INDEX = 3
const CHOICE_MENU_INDEX = 4

export var type = 'dialog'
export(String, 'common', 'initial', 'final') var subtype = 'common'

var choice_inputs = {}
var choice_index = 5;





func _on_DialogNode_close_request() -> void:
    self.clear_all_slots()
    self.queue_free()


func _on_ChoiceMenu_add_choice() -> void:
    var line_edit = LineEdit.new()
    line_edit.placeholder_text = 'choice'
    choice_inputs[str(choice_index)] = line_edit
    add_child(line_edit, true)
    set_slot(choice_index,
            false, 0, DEFAULT_COLOR,
            true, DEFAULT_PORT, DEFAULT_COLOR)
    choice_index += 1
    update()
    force_update_transform()


func _on_ChoiceMenu_delete_choice() -> void:
    var last_index = get_child_count() - 1;
    if last_index <= CHOICE_MENU_INDEX:
        return
    var choice_input = choice_inputs.get(str(last_index))
    choice_inputs.erase(str(last_index))
    choice_input.queue_free()
    clear_slot(last_index)
    choice_index -= 1
    rect_size.y = 0


func _on_CheckBox_toggled(button_pressed: bool) -> void:
    $NextLabel.visible = not button_pressed
    $ChoiceMenu.visible = button_pressed
    set_slot(NEXT_LABEL_INDEX,
            false, 0, DEFAULT_COLOR,
            not button_pressed, DEFAULT_PORT, DEFAULT_COLOR)
    for index in choice_inputs.keys():
        var i = int(index)
        set_slot(i,
                false, 0, DEFAULT_COLOR,
                button_pressed, DEFAULT_PORT, DEFAULT_COLOR)
        choice_inputs[index].visible = button_pressed


