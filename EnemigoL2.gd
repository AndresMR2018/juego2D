extends Area2D

var P = position.x #Starting Position
var PL = P-10 #Position limit
var Up = true #Going up or down?
func _ready():
	P = position.x
	PL = P-200


func _process(delta):
	if position.x == PL:
		Up = false
		$AnimatedSprite.flip_h = false
	if position.x == P:
		Up = true
		$AnimatedSprite.flip_h = true
	
	if Up:
		position.x -= 1
	else:
		position.x += 1


func _on_Timer_timeout():
	pass # Replace with function body.
	$AnimatedSprite.play("caminarEnemigo")


