extends Camera2D

@export var speed = 10.0
@export var zoomspeed = 10.0
@export var zoommargin = 0.1 

@export var zoomMin = 0.25
@export var zoomMax = 3.0

var zoompos = Vector2()
var zoomfactor = 1.0

func _ready():
	pass 

func _process(delta):
	#smooth movement
	var inpx = (int(Input.is_action_pressed("ui_right"))
	 - int(Input.is_action_pressed("ui_left")))
	var inpy = (int(Input.is_action_pressed("ui_down"))
	 - int(Input.is_action_pressed("ui_up")))
	position.x = lerp(position.x, position.x + inpx * speed * zoom.x, speed * delta)
	position.y = lerp(position.y, position.y + inpy * speed * zoom.y, speed * delta)
	
	#zoom in 
	zoom.x = lerp(zoom.x, zoom.x * zoomfactor, zoomspeed * delta)
	zoom.y = lerp(zoom.y, zoom.y * zoomfactor, zoomspeed * delta)
	zoom.x = clamp(zoom.x, zoomMin, zoomMax)
	zoom.y = clamp(zoom.y, zoomMin, zoomMax)
	pass

func _input(event):
	if abs(zoompos.x - get_global_mouse_position().x) > zoommargin:
		zoomfactor = 1.0
	if abs(zoompos.y - get_global_mouse_position().y) > zoommargin:
		zoomfactor = 1.0

	if event is InputEventMouseButton:
		if event.is_pressed():
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				zoomfactor -= 0.01
				zoompos = get_global_mouse_position()
			if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				zoomfactor += 0.01
				zoompos = get_global_mouse_position()
