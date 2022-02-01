extends Node2D

export (PackedScene) var Light_Archer_scene

func _ready():
	randomize()

func _on_Timer_timeout():
	var mob = Light_Archer_scene.instance()
