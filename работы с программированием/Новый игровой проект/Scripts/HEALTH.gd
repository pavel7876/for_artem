extends KinematicBody2D

var fg = load("res://Scripts/KinematicBody2D.gd")
var hp = 4

func _physics_process(delta):
	 if $"../KinematicBody2D2".position.y > 100:
	   $"../KinematicBody2D2".position.y = -1460  
	   $"../KinematicBody2D2".position.x = 550
	   hp -= 1
	 if hp == 3:
	   queue_free()
	 
		



	
