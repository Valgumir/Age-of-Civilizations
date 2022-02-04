extends Node2D

const ROTATION_SPEED = 2

func _ready():
	pass 

#func _process(delta):
#    pass

func _process(delta):
	rotation += ROTATION_SPEED * delta
