extends Node2D

var in_area: bool = false
var in_area_notes: bool = false
var current_area
var current_area_notes
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(in_area)
	var viewport = get_viewport_rect().size
	if (get_global_mouse_position().x > 0 -25 and get_global_mouse_position().x < viewport.x + 25 and get_global_mouse_position().y > -100 and get_global_mouse_position().y < viewport.y + 150): #yes I used magic number sorry game jam 
		global_position = get_global_mouse_position()
	if Input.is_action_just_pressed("Mouse"):
		$Area2D/Push.visible = true
		$Area2D/Idle.visible = false
		if (in_area and current_area.has_method("button_pressed")):
			current_area.button_pressed()
		if (in_area_notes and current_area_notes.has_method("open_notes")):
			if (current_area_notes.sprite.frame == 0):
				current_area_notes.open_notes()
			else:
				current_area_notes.close_notes()
	elif Input.is_action_just_released("Mouse"):
		$Area2D/Push.visible = false
		$Area2D/Idle.visible = true
		if (in_area and current_area.has_method("button_released")):
			current_area.button_released()

func _on_area_2d_area_entered(area):
	current_area = area.get_parent()
