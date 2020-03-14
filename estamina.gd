extends Node2D

var estamina = 100
var current_angle = -1.6
var min_angle = -1.6
var max_angle = 4.7


func _draw(): #70 -37 --> 40
	draw_estamina_meter(Vector2(0,0),20,-17,current_angle,Color('#71e958'))
	
func draw_estamina_meter(pos, size, width, current, color):
	#background
	draw_arc(pos,size,max_angle,min_angle,800,Color(0,0,0,0.5),width,true)
	
	#Foregroup
	draw_arc(pos,size,max_angle,current,800,color,width,true)

	
func _process(delta):
	if Input.is_action_pressed("izquierda"):
		estamina -=0.5
	if Input.is_action_pressed("derecha"):
		estamina -=0.5
	else:
		estamina +=0.1
			
	estamina = clamp(estamina,0,100)
	var value = ((min_angle * -1) + max_angle)/100
	current_angle= max_angle-(estamina *value)
		
	print(estamina)
	
	if Input.is_action_pressed("izquierda") or Input.is_action_pressed("derecha"):
		 update()
