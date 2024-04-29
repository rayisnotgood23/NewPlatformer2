extends Node

var x
var jump_just_pressed = false

func update():
	x = Input.get_axis("btn_left", "btn_right")
	jump_just_pressed = Input.is_action_just_pressed("btn_jump")
