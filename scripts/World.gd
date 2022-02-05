extends Node2D

export (PackedScene) var Light_Archer_scene
var Enemy = preload("res://scenes/enemy.tscn")

func _ready():
	pass

func _on_SpawnTimer_timeout():	#script enemy_spawn
	#mogelijke hulp -> https://godotengine.org/qa/65106/how-to-spawn-enemies-every-3-seconds-or-so
	var e = Enemy.instance()
	var soldier = get_node("res://scenes/Light Archer.tscn")
	var pos = soldier.position
	#enemy.position = $Spawn.position
	
	if randf() < 0.5:
		# On the left
		pos.x -= rand_range(50.0, 200.0)
	else:
		# On the right
		pos.x += rand_range(50.0, 200.0)
	
	e.position = Vector2(-10,15)
	add_child(e)
