extends Node3D

var spawn_interval_range = Vector2(0.5, 2.0)
var timer = 0.0
var next_spawn_time = 1.0
var cube_scene = preload("res://Cube.tscn")

func _ready():
	randomize()
	schedule_next_spawn()

func _process(delta):
	timer += delta
	if timer >= next_spawn_time:
		spawn_cube()
		schedule_next_spawn()

func schedule_next_spawn():
	timer = 0.0
	next_spawn_time = randf_range(spawn_interval_range.x, spawn_interval_range.y)

func spawn_cube():
	var cube_instance = cube_scene.instantiate()
	var x = randf_range(-2.0, 2.0)
	var y = randf_range(1.0, 3.0)
	var z = 10.0
	cube_instance.global_transform.origin = Vector3(x, y, z)
	get_parent().add_child(cube_instance)
