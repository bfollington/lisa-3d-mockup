extends Sprite3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var camera = get_viewport().get_camera()
	look_at(camera.global_transform.origin, Vector3.UP)
	
	#rotation_degrees = Vector3(32, rotation_degrees.y, 0)
