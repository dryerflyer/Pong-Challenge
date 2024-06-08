class_name Ball;
extends RigidBody2D

var ball_speed = Vector2(400,400)

func _physics_process(delta):
	var collision_info = move_and_collide(ball_speed * delta)
	if collision_info:
		ball_speed = ball_speed.bounce(collision_info.get_normal())
		var collider = collision_info.get_collider()
		if collider is Paddle:
			increase_speed();

func increase_speed():
	if ball_speed.x < 1000:
		ball_speed *= 1.1;

func reset_speed():
	ball_speed = Vector2(400,400);
