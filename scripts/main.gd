extends Node2D
var start_game: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	#if !$"Start of Game".is_playing():
			#$"Start of Game".play()
			#Global.wrong = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Global.wrong):
		if !$AudioStreamPlayer2D.is_playing():
			$AudioStreamPlayer2D.play()
			Global.wrong = false
