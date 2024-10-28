extends Node3D

var is_active = true
var controller_id = 0

func _process(delta):
	if Input.is_action_just_pressed("toggle_laser_" + str(controller_id)):
		is_active = not is_active
		$CylinderMesh.visible = is_active
		$CollisionShape3D.disabled = not is_active
