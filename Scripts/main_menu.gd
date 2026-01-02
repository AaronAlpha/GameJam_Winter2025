extends Control

@onready var play_audio_stream_player_2d: AudioStreamPlayer2D = $VBoxContainer/Play_Button/Play_AudioStreamPlayer2D
@onready var exit_audio_stream_player_2d: AudioStreamPlayer2D = $VBoxContainer/Exit_Button/Exit_AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# the following are the signals connecting to the 4 buttons created: Start; Controls; Settings; Exit


# start button
func _on_start_button_pressed() -> void:
	play_audio_stream_player_2d.play()
	get_tree().change_scene_to_file("res://Scenes/Levels Scenes/controls_control.tscn")

# exit button
func _on_exit_button_pressed() -> void:
	exit_audio_stream_player_2d.play()
	get_tree().quit()
