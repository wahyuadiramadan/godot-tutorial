extends KinematicBody2D

var velocity=Vector2(100,0)
var collision

func _physics_process(delta):
	collision=move_and_collide(velocity*delta)
	if collision:
		collision.collider.get_node("Label").visible=true
