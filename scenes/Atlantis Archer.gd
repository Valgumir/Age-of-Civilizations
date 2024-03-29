extends CharacterBody2D

const SPEED = 300

var movedir = Vector2(0,0)

func _physics_process(delta):
	controls_loop()
	movement_loop()

func controls_loop():
	var LEFT	= Input.is_action_pressed("ui_left")
	var RIGHT	= Input.is_action_pressed("ui_right")
	var UP		= Input.is_action_pressed("ui_up")
	var DOWN	= Input.is_action_pressed("ui_down")

	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)

func movement_loop():
	var motion = movedir.normalized() * SPEED
	set_velocity(motion)
	set_up_direction(Vector2(0,0))
	move_and_slide()
