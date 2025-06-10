extends Node

@export var what_level_are_we = 1
@export var reset_notes: bool = false
@export var at_number := 0
@export var numbers_added := [0, 0, 0, 0, 0]
@export var wrong: bool = false

var second_level_audio = preload("res://audio/Second Instruction Set.mp3")
var audio_player: AudioStreamPlayer2D

var level_1_number_set := [
	[6, 3, 7, 3, 2],
	[6, 3, 7, 3, 5],
	[6, 3, 7, 3, 8],
	[6, 3, 7, 6, 2],
	[6, 3, 7, 6, 5],
	[6, 3, 7, 6, 8],
	[6, 3, 7, 9, 2],
	[6, 3, 7, 9, 5],
	[6, 3, 7, 9, 8]
]
var level_2_number_set := [
	[1, 3, 2, 6, 0],
	[1, 3, 2, 9, 3],
	[3, 6, 4, 9, 3]
]

var level_3_number_set := [2, 4, 8, 6, 7]

var level_4_number_set := [2, 8, 1, 4, 6]

var submit := false

func _ready():
	pass
func inc_number(num):
	if at_number < 5:
		numbers_added[at_number] = num
		at_number += 1

func dec_number():
	if at_number > 0:
		at_number -= 1
		numbers_added[at_number] = 0

func reset():
	if compare_array():
		match what_level_are_we:
			1:
				pass
			2:
				pass
			3:
				pass
			4:
				pass
		what_level_are_we += 1
	else:
		wrong = true
	numbers_added = [0, 0, 0, 0, 0]
	at_number = 0
	reset_notes = true

func compare_array():
	match what_level_are_we:
		0:
			pass
		1:
			for i in level_1_number_set:
				if i == numbers_added:
					return true
		2:
			for i in level_2_number_set:
				if i == numbers_added:
					return true
		3:
			if level_3_number_set == numbers_added:
				return true
		4:
			if (level_4_number_set == numbers_added):
				return true
	return false
