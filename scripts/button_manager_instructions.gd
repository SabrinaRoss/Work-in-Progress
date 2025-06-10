extends Node2D




func _on_button_pressed():
	if $"../Actual Notes".visible == true:
		$"../Intructions Page".visible = true
		$"../Actual Notes".visible = false
		
	elif $"../Intructions Page".visible == true:
		$"../Intructions Page".visible = false
		$"../Actual Notes".visible = true
