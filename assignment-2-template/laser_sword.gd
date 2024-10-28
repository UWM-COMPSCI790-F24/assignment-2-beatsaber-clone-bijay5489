extends Area3D
@export var controller_id = 0

var is_active = true
var sword_color = Color.RED
func _ready():
	# Initialize the laser sword
	$MeshInstance3D.visible = is_active
	$CollisionShape3D.disabled = not is_active

	# Connect signals if needed
	# For example, if you want to detect bodies entering the laser area
	# connect("body_entered", self, "_on_body_entered")

func _process(delta):
	if Input.is_action_just_pressed("toggle_laser_" + str(controller_id)):
		is_active = not is_active
		$MeshInstance3D.visible = is_active
		$CollisionShape3D.disabled = not is_active
