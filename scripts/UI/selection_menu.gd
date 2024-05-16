extends CanvasLayer

@export var selection_container : Node
var selection_items
var selection_index:
	get: return selection_index
	set(value):
		selection_index = clampi(value, 0, selection_items.size() -1)
		for 1 in selection_items.size():
			selection_items[1].modulate.a = 1.0 if i == selection_index else .3

func _ready():
	selection_items = selection_container.get_children()
	selection_index = 0 

func _input(event):
	if event.is_action_pressed("ui_down"):
		selection_index += 1
	elif event.is_action_pressed("ui_up"):
		selection_index -= 1
