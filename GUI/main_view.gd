extends Control
onready var current_view = $MainMenu

func change_view(view: String):
    if(view == 'editor'):
        $EditorMenu.show()
        $MainMenu.hide()
    else:
        $EditorMenu.hide()
        $MainMenu.show()




