extends KinematicBody2D


const SPEED = 50
const GRAVITY = 60
const FLOOR = Vector2(0, -1)
const JUMP = 70

var velocity = Vector2()
var hp = 4



# warning-ignore:unused_argument
func _physics_process(delta):
   if position.y > 100:
	   position.y = -1460  
	   position.x = 550
	   hp -= 1

   if Input.is_action_pressed("ui_right"):
	   velocity.x = SPEED
	   $AnimatedSprite.flip_h = false
	   if is_on_floor():
		   $AnimatedSprite.play("New Anim")
   elif Input.is_action_pressed("ui_left"):
	   velocity.x = -SPEED
	   $AnimatedSprite.flip_h = true
	   if is_on_floor():
		   $AnimatedSprite.play("New Anim")
   else:
	   velocity.x = 0
	   if is_on_floor():
		   $AnimatedSprite.play("default")
	
   if Input.is_action_pressed("ui_up") and is_on_floor():
	   $AnimatedSprite.play("New Anim 1")
	   velocity.y = -JUMP
   velocity.y += (GRAVITY * delta)
# warning-ignore:return_value_discarded
   move_and_slide(velocity, FLOOR)
