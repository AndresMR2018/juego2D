extends Node
#var vidas_jugador = 3
var puntos = 0
var tiempo=30


func _ready():
	pass # Replace with function body.

func update_puntos():
	pass
	get_tree().get_nodes_in_group("puntos")[0].text = String(puntos) #convierte a string el valor de puntos
	
func update_time():
	pass
	get_tree().get_nodes_in_group("tiempo")[0].text = String(tiempo)
	

