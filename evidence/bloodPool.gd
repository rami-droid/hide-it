extends RigidBody2D

var clean_range = false

var timer = 0

func displayUI():
	print(%killPromptLabel)
	# $killPromptLabel.text = "Press E to clean"
#	if clean_range:
		#$killPromptLabel.visible = true
#	else:
		#$killPromptLabel.visible = false



func clean():
	if clean_range and timer <= 60:
		timer += 1
		print(timer)
	elif timer > 60:
		timer = 0
		queue_free()
		

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		displayUI()
		print("player exit")
		clean_range = false
		timer = 0


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		displayUI()
		print("player enter")
		clean_range = true

func _physics_process(_delta):
	if Input.is_action_pressed("interact"):
		
		clean()
	
