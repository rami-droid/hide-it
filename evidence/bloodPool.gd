extends RigidBody2D

var clean_range = false

var timer = 0

func displayUI():
	print(UIManager)
	if clean_range:
		UIManager.show_prompt("Press E to clean")
	else:
		UIManager.hide_prompt()



func clean():
	if clean_range and timer <= 60:
		timer += 1
		print(timer)
	elif timer > 60:
		timer = 0
		queue_free()
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("player enter")
		clean_range = true
		await get_tree().process_frame

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("player exit")
		clean_range = false
		timer = 0


func _physics_process(_delta):
	displayUI()
	if Input.is_action_pressed("interact"):
		
		clean()
	
