extends Node2D

var hover_submit: bool = false
var hover_delete: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	update_labels()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update_labels()
	if Input.is_action_just_pressed("Mouse") and hover_submit:
			$Sprite2D.frame = 1
			#button pressed
			Global.submit = true
	if Input.is_action_just_released("Mouse") and hover_submit:
			$Sprite2D.frame = 3
			Global.reset()
	if Input.is_action_just_pressed("Mouse") and hover_delete:
		Global.dec_number()
		$Sprite2D.frame = 2
	
func update_labels():
	var labels = [$Label, $Label2, $Label3, $Label4, $Label5]
	for i in range(5):
		labels[i].text = str(Global.numbers_added[i])

func _on_submit_button_area_entered(area):
	hover_submit = true


func _on_submit_button_area_exited(area):
	hover_submit = false
	Global.submit = false
	$Sprite2D.frame = 0


func _on_area_2d_area_entered(area):
	hover_delete = true


func _on_area_2d_area_exited(area):
	hover_delete = false
	$Sprite2D.frame = 0
