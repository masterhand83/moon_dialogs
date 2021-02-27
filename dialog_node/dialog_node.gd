extends GraphNode


func _on_DialogNode_close_request() -> void:
    self.clear_all_slots()
    self.queue_free()
