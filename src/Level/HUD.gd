extends CanvasLayer

signal start_game
signal player_move_right
signal player_move_left
signal player_fire

#func _ready():
#	$RightButton.hide()
#	$LeftButton.hide()
#	$FireButton.hide()
#
#func show_message(text):
#	$Message.text = text
#	$Message.show()
#	$MessageTimer.start()
#
#func show_game_over():
#	show_message("Конец игры")
#	# Wait until the MessageTimer has counted down.
#	yield($MessageTimer, "timeout")
#
#	$Message.text = "Йо!"
#	$Message.show()
#	# Make a one-shot timer and wait for it to finish.
#	yield(get_tree().create_timer(1), "timeout")
#	$StartButton.show()
#	$RightButton.hide()
#	$LeftButton.hide()
#	$FireButton.hide()
#
#func update_score(score):
#	$ScoreLabel.text = str(score)
#
#func update_health(health):
#	$HealthLabel.text = str(health)
#
#
#func _on_MessageTimer_timeout():
#	$Message.hide()
#
#
#
#func _on_StartButton_pressed():
#	$StartButton.hide()
#	$RightButton.show()
#	$LeftButton.show()
#	$FireButton.show()
#	emit_signal("start_game")
#
#
#
#
#
#func _on_RightButton_pressed():
#	emit_signal("player_move_right")
#
#
#func _on_LeftButton_pressed():
#	emit_signal("player_move_left")
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("fire"):
		emit_signal("player_fire")



func _on_Button_pressed():
	emit_signal("player_fire")
