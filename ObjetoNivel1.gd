extends Area2D

export (int) var puntos
export (int) var puntos2


func _on_ObjetoNivel1_body_entered(body):
	
	pass # Replace with function body.
	#queue_free()
	if (body.is_in_group("jugador")):
		gamehandler.puntos+=puntos
		gamehandler.update_puntos()
	queue_free()


func _on_Objeto2_body_entered(body):
	pass # Replace with function body.
	if (body.is_in_group("jugador")):
		gamehandler.puntos+=puntos2
		gamehandler.update_puntos()
	queue_free()
