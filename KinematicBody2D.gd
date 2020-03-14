extends KinematicBody2D
var velocidad=2
var speed = 200
var Velocidad = Vector2()
var Distancia = Vector2()
var direction_x =0
var velocidad_salto = 1000
var gravedad = 2500
var pregSalto = false

export var vida_max = 100
export var vida_act = 100
var barra_vida
 
func _ready():
	set_physics_process(true)
	barra_vida=get_tree().get_nodes_in_group("vida")[0]
	
func _physics_process(delta):
	_move(delta)
	update_barra_vida()
	
func update_barra_vida():
	pass
	barra_vida.value= vida_act*barra_vida.max_value/vida_max
	
func _move(delta):
	direction_x =int(Input.is_action_pressed("derecha"))-int(Input.is_action_pressed("izquierda"))
	
	if direction_x <0 :
		$AnimatedSprite.flip_h = true
	elif direction_x > 0 :
		$AnimatedSprite.flip_h=false
	
	Distancia.x = speed*delta
	Velocidad.x = (direction_x*Distancia.x )/ delta
	Velocidad.y += gravedad*delta
	move_and_slide(Velocidad,Vector2(0,-1))
	
	
	if is_on_floor():##esta sobre el suelo?
		pregSalto = false ## cada vez que esta sobre el suelo se inicia en falso
		Velocidad.y=0
		if Input.is_action_just_pressed("arriba"): ## si esta on floor y salta
			$AnimatedSprite.play("saltar")
			if(pregSalto==false):## si salta y no es verdadero 
				Velocidad.y = -velocidad_salto
				pregSalto=true

	
	

func _process(delta):
	var cont = 0 
	cont=0
	if Input.is_action_pressed("derecha"):
		$CajaDialogo.visible=true
		cont +=1
		if(cont==1):
			$CajaDialogo.visible=false
		
		
	if Input.is_action_pressed("izquierda"):
		$AnimatedSprite.play("caminar")
		position.x -=velocidad
	else:
		if Input.is_action_pressed("derecha"):
			$AnimatedSprite.play("caminar")
			position.x +=velocidad
		else:
			$AnimatedSprite.play("Alto")
			
	#if Input.is_action_pressed("arriba"):
	#	if(!pregSalto):
	#		Velocidad.y -= velocidad_salto
	#		pregSalto=true
	
func _on_Portal_body_entered(body):
	pass # Replace with function body.
	get_tree().change_scene("res://Nivel2.tscn")


func _on_ObjetoNivel1_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		
		$huevo1.visible=true
	else:
		$huevo1.visible=false
	


func _on_ObjetoNivel2_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
	
		$huevo2.visible=true
	else:
		$huevo2.visible=false
	


func _on_Objeto2_body_entered(body): #Si cogemos el hueso entonces
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		
		$hueso.visible=true
	else:
		$hueso.visible=false


func _on_EnemigoL1_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		vida_act-=25
	if(vida_act==0):
		gamehandler.puntos=0
		gamehandler.tiempo=30
		get_tree().reload_current_scene()


func _on_sarcofago_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		
		$sarcofago.visible=true
	else:
		$sarcofago.visible=false




func _on_escrituras_body_entered(body):
	
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		
		$escritura.visible=true
	else:
		$escritura.visible=false


func _on_EnemigoL2_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		vida_act-=25
	if(vida_act==0):
		gamehandler.puntos=0
		gamehandler.tiempo=30
		get_tree().reload_current_scene()


func _on_EnemigoL3_body_entered(body):
	pass # Replace with function body.
	if(body.is_in_group("jugador")):
		vida_act-=25
	if(vida_act==0):
		gamehandler.puntos=0
		gamehandler.tiempo=30
		get_tree().reload_current_scene()



	
		
