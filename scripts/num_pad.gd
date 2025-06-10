extends Node2D


var is_inside: bool = false
var current_num
var is_area
# Called when the node enters the scene tree for the first time.
func _ready():
	current_num = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func button_pressed():
	$Sprite2D.frame = current_num 
	Global.inc_number(current_num)
func button_released():
	$Sprite2D.frame = 0



func _on__area_entered(area):
	current_num = 1
	is_area = area
	$Timer.start()

func _on__area_entered_2(area):
	current_num = 2
	is_area = area
	$Timer.start()

func _on__area_entered_3(area):
	current_num = 3
	is_area = area
	$Timer.start()

func _on__area_entered_4(area):
	current_num = 4
	is_area = area
	$Timer.start()

func _on__area_entered_5(area):
	current_num = 5
	is_area = area
	$Timer.start()

func _on__area_entered_6(area):
	current_num = 6
	is_area = area
	$Timer.start()

func _on__area_entered_7(area):
	current_num = 7
	is_area = area
	$Timer.start()

func _on__area_entered_8(area):
	current_num = 8
	is_area = area
	$Timer.start()

func _on__area_entered_9(area):
	current_num = 9
	is_area = area
	$Timer.start()


func _on__area_exited(area):
	area.get_parent().in_area = false


func _on__area_exited_2(area):
	area.get_parent().in_area = false


func _on__area_exited_3(area):
	area.get_parent().in_area = false


func _on__area_exited_4(area):
	area.get_parent().in_area = false


func _on__area_exited_5(area):
	area.get_parent().in_area = false


func _on__area_exited_6(area):
	area.get_parent().in_area = false


func _on__area_exited_7(area):
	area.get_parent().in_area = false


func _on__area_exited_8(area):
	area.get_parent().in_area = false


func _on__area_exited_9(area):
	area.get_parent().in_area = false


func make_true_in_area():
	is_area.get_parent().in_area = true
