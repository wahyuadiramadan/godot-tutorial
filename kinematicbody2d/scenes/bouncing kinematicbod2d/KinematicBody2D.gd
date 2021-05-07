extends KinematicBody2D

var speed=10
var velocity=Vector2(100,100)

func _physics_process(delta):
	var collision=move_and_collide(velocity*delta*speed)
	if collision:
		velocity=velocity.bounce(collision.normal)
