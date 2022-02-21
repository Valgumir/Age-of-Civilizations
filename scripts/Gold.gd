extends StaticBody2D #source: https://godotengine.org/qa/88049/how-to-change-sprite-from-code

var color = "yellow"

func _physics_process(delta):
	$Sprite.texture = load("res://resources/Resources/Regenerating_Gold-removebg-preview.png")
