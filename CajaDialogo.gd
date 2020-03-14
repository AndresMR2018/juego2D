extends RichTextLabel

var dialogo = ["Hey! Bienvenido a la epoca de los Dinosaurios","Encuentra objetos!"]
var page = 0


func _ready():
	pass # Replace with function body.
	set_bbcode(dialogo[page])
	set_visible_characters(0)
	set_physics_process(true)
	

func _physics_process(delta):
	if(Input.is_action_pressed("continuar")):
		if get_visible_characters() > get_total_character_count():
			if page < dialogo.size()-1:
				page += 1
				if(page==1):
					set_bbcode(dialogo[page])
					set_visible_characters(0)
					


func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	
	
	
	
	
	
	
