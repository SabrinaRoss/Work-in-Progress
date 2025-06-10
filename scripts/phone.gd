extends Area2D

var first_level_audio = preload("res://audio/First Instructions set remake.mp3")
var second_level_audio = preload("res://audio/Second Instruction Set.mp3")
var third_level_audio = preload("res://audio/Third Insruction Set.mp3")
var fourth_level_audio = preload("res://audio/FOURTH LAST ANS.mp3")
var last_end_game = preload("res://audio/LAST INSTRUCTION SET.mp3")
var audio_player: AudioStreamPlayer2D
var entered = false
var current_level: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	audio_player = AudioStreamPlayer2D.new()
	add_child(audio_player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_level != Global.what_level_are_we:
		$Sprite2D.visible = false
		$"New msg".visible = true
	else:
		$Sprite2D.visible = true
		$"New msg".visible = false
	
	if Input.is_action_just_pressed("Mouse") and entered:
		match Global.what_level_are_we:
			1:
				if audio_player.is_playing():
					audio_player.stop()
				else:
					audio_player.stream = first_level_audio
					audio_player.play()
					current_level = Global.what_level_are_we
			2:
				if audio_player.is_playing():
					audio_player.stop()
				else:
					audio_player.stream = second_level_audio
					audio_player.play()
					current_level = Global.what_level_are_we
			3:
				if audio_player.is_playing():
					audio_player.stop()
				else:
					audio_player.stream = third_level_audio
					audio_player.play()
					current_level = Global.what_level_are_we
			4:
				if audio_player.is_playing():
					audio_player.stop()
				else:
					audio_player.stream = fourth_level_audio
					audio_player.play()
					current_level = Global.what_level_are_we
			5:
				if audio_player.is_playing():
					audio_player.stop()
				else:
					audio_player.stream = last_end_game
					audio_player.play()
					current_level = Global.what_level_are_we

func _on_area_entered(area):
	entered = true


func _on_area_exited(area):
	entered = false
