extends Sprite
var rapidez=2

func _process(delta):
	if Input.is_action_pressed("arriba"):
		position.y -=rapidez
	if Input.is_action_pressed("abajo"):
		position.y +=rapidez
	if Input.is_action_pressed("izquierda"):
		position.x -=rapidez
	if Input.is_action_pressed("derecha"):
		position.x +=rapidez
