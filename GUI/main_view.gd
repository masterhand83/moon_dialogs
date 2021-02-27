extends Control
onready var current_view = $MainMenu

func _ready() -> void:
    OS.low_processor_usage_mode = true


func change_view(view: String):
    if(view == 'editor'):
        $EditorMenu.show()
        $MainMenu.hide()
    else:
        $EditorMenu.hide()
        $MainMenu.show()


func _on_child_change_view(view) -> void:
    change_view(view)
