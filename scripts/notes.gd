extends Area2D

@onready var sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = $Sprite2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("escape")):
		close_notes()
		

func open_notes():
	$"Actual Notes".visible = true
	$Sprite2D.frame = 1 # maybe
func close_notes():
	$"Actual Notes".visible = false
	print($".".name)
	#var notes_node = get_node("Intructions Page")
	#if notes_node:
		#$"Instructions Page".visible = false
	$Sprite2D.frame = 0
	

func _on_area_entered(area):
	#$Sprite2D.frame = 1
	area.get_parent().in_area_notes = true
	area.get_parent().current_area_notes = $"."


func _on_area_exited(area):
	#$Sprite2D.frame = 0
	area.get_parent().in_area_notes = false
