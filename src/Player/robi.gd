extends AnimatedSprite

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		flip_h = true
		play("Run")
	elif Input.is_action_pressed("move_right"):
		flip_h = false
		play("Run")
	else:
		play("Idle")
