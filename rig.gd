extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var _rotation = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("ui_right"):
		$Tween.interpolate_property(self, "_rotation", _rotation, round(_rotation + 1), 0.2, Tween.TRANS_CUBIC)
		$Tween.start()
		
	elif event.is_action_pressed("ui_left"):
		$Tween.interpolate_property(self, "_rotation", _rotation, round(_rotation - 1), 0.2, Tween.TRANS_CUBIC)
		$Tween.start()


	# elif event.is_action_pressed("ui_up"):
	# elif event.is_action_pressed("ui_down"):
	# elif event.is_action_pressed("charge"):


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation = Vector3(0, _rotation * (PI /4), 0)
