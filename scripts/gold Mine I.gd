extends StaticBody2D

var hp = 100

func _physics_process(delta):
	
	if hp < 1:
		die()

func _mine():
	pass

func die():
	queue_free()
