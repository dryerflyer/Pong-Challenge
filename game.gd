extends Node2D
var ball_scene = preload("res://ball.tscn")

var player_1_score : int = 0;
var player_2_score : int = 0;
@onready var ball : Ball = $Ball;

func _init():
	ball = $Ball;
	
func _paddle_hit():
	ball.increase_speed();
		
func _update_score():
	$Label.text = str(player_1_score) + ":" + str(player_2_score);
	
func _on_goal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	player_2_score += 1;
	_update_score();
	_start_new_round();
	ball.reset_speed();

func _on_goal_2_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	player_1_score += 1;
	_update_score()
	_start_new_round();
	ball.reset_speed();
	
func _start_new_round():
	ball.position = Vector2(960, 540);
