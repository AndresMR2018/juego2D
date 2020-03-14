extends Node2D

func _ready():
	pass # Replace with function body.
	gamehandler.update_puntos()

func _on_Timer_timeout():
	
		
	if(gamehandler.tiempo>0):
		gamehandler.tiempo -= 1
		gamehandler.update_time()
	elif(gamehandler.tiempo==0):
		gamehandler.tiempo=30
		gamehandler.puntos=0
		get_tree().reload_current_scene()



