extends CharacterBody2D

var speed = 300
var nearby_victim = null
var in_kill_range = false



# Blood Splatter Effect (for top-down view)
func spawn_blood_effect(_position: Vector2):
	var direction = (get_global_mouse_position() - position).normalized()
	var angle = direction.angle()
	# Ensure the scene is preloaded properly as a PackedScene
	var blood_particles_scene = preload("res://particles/bloodSplatterParticle.tscn")  # Preload the PackedScene
	var blood_particles = blood_particles_scene.instantiate()  # Now call instance() on the PackedScene
	blood_particles.position = position  # Position the particles at the location of the victim
	get_parent().add_child(blood_particles)  # Add the particle system to the scene
	blood_particles.rotation = angle
	blood_particles.emitting = true  # Start emitting particles
	


func kill(victim):
	if in_kill_range:
		spawn_blood_effect(nearby_victim.position)
		victim.die()
		nearby_victim = null

func display_ui():
	if nearby_victim:
		UIManager.show_prompt("Press E to kill")
	else:
		UIManager.hide_prompt()

func _physics_process(_delta):
	display_ui()
	look_at(get_global_mouse_position())

	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed
	move_and_slide()

func _process(_delta: float) -> void:
	if nearby_victim and Input.is_action_just_pressed("interact"):
		kill(nearby_victim)

func _on_kill_range_body_exited(body: Node2D) -> void:
	if body.is_in_group("victim"):
		in_kill_range = false
		print("victim exit")
		nearby_victim = null

func _on_kill_range_body_entered(body: Node2D) -> void:
	if body.is_in_group("victim"):
		in_kill_range = true
		print("victim enter")
		nearby_victim = body
