extends CharacterBody2D



var grav = 10


var walkspeed = 200



var left = "ui_left"
var right = "ui_right"
var up = "ui_up"
var down = "ui_down"

var jumpspeed = 300


func _physics_process(delta: float) -> void:
	
	
	var input_dir = Input.get_action_strength(right) - Input.get_action_strength(left)
	
	velocity.x = input_dir*walkspeed
	velocity.y += grav
	if is_on_floor():
		if Input.is_action_just_pressed(up):
			velocity.y = -jumpspeed
	move_and_slide()
	pass
