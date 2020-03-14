extends Area2D

var P = position.y #Starting Position
var PL = P-10 #Position limit
var Up = true #Going up or down?
func _ready():
	P = position.y
	PL = P-50


func _process(delta):
	if position.y == PL:
		Up = false
	if position.y == P:
		Up = true
	
	if Up:
		position.y -= 1
	else:
		position.y += 1
	
	




func _on_Tiempo_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
			gamehandler.tiempo+=11
			gamehandler.update_time()
			queue_free()
		
