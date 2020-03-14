extends Area2D
var P = position.y #Starting Position
var PL = P-10 #Position limit
var Up = true #Going up or down?
func _ready():
	P = position.y
	PL = P-200


func _process(delta):
	if position.y == PL:
		Up = false
	if position.y == P:
		Up = true
	
	if Up:
		position.y -= 1
	else:
		position.y += 1


func _on_Timer_timeout():
	pass # Replace with function body.
	$AnimatedSprite.play("volarEnemigo")


#func _on_EnemigoL1_body_entered(body):
#	pass # Replace with function body.
#	if(body.is_in_group("jugador")):
		
		
