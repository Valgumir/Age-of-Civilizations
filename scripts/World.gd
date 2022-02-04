extends Node2D

export (PackedScene) var Light_Archer_scene
var Enemy = preload("res://scenes/enemy.tscn")

func _ready():
	randomize()

func _on_SpawnTimer_timeout():	#script enemy_spawn
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.position = $Spawn.position
	
	# change spawn position
#    var area = $SpawnArea
#    var position = area.rect_position + Vector2(randf() * area.rect_size.x, randf() * area.rect_size.y)
#    $Spawn.position = position

	var nodes = get_tree().get_nodes_in_group("spawn")
	var node = nodes[randi() % nodes.size()]
	var position = node.position
	$Spawn.position = position
