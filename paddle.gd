class_name Paddle;
extends CharacterBody2D;

@export var side:String;

const MOVE_SPEED = 500;

func _physics_process(delta):
	if side == 'left':
		if Input.is_action_pressed("left_up"):
			velocity.y = -MOVE_SPEED
		elif Input.is_action_pressed("left_down"):
			velocity.y =  MOVE_SPEED
		else:
			velocity.y = 0
	elif side == 'right':
		if Input.is_action_pressed("right_up"):
			velocity.y = -MOVE_SPEED
		elif Input.is_action_pressed("right_down"):
			velocity.y =  MOVE_SPEED
		else:
			velocity.y = 0

	move_and_slide();
