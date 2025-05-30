extends CharacterBody2D

enum State { IDLE, ALERTED, FLEEING }

var state = State.IDLE
var speed = 150
var flee_target = Vector2.ZERO

@export var patrol_points: Array[Vector2] = []
var patrol_index = 0
var patrol_speed = 100

var is_waiting = false

func die():
    var blood_pool_scene = preload("res://evidence/bloodPool.tscn")
    var blood_pool = blood_pool_scene.instantiate()
    blood_pool.position = position
    get_tree().current_scene.add_child(blood_pool)
    blood_pool.z_index = -1
    print("bloodpos", blood_pool.position)
    print("victim position", position)

    queue_free()

func patrol_behavior(_delta):
    if patrol_points.size() == 0 or is_waiting:
        return

    look_at(patrol_points[patrol_index])
    var target = patrol_points[patrol_index]
    var direction = (target - position).normalized()
    velocity = direction * patrol_speed
    move_and_slide()

    if position.distance_to(target) < 10:
        is_waiting = true
        velocity = Vector2.ZERO
        move_and_slide()
        await get_tree().create_timer(1).timeout
        patrol_index = (patrol_index + 1) % patrol_points.size()
        is_waiting = false

func _process(_delta):
    match state:
        State.IDLE:
            patrol_behavior(_delta)
        
        State.ALERTED:
            pass

        State.FLEEING:
            pass