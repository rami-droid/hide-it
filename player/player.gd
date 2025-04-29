extends CharacterBody2D

var speed = 300

func _physics_process(_delta):
	look_at(get_global_mouse_position())

	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed
	move_and_slide()
