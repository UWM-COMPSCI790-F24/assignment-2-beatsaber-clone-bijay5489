extends RigidBody3D

var speed = 5.0

func _ready():
	linear_velocity = Vector3(0, 0, -speed)


func _on_body_entered(body):
	if body.is_in_group("LaserSword"):
		queue_free()  # Destroy the cube
