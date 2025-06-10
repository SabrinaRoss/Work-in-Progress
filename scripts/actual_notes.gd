extends Control

@export var what_sheet: int
# 0 is notes
# 1 is letter
# 2 is instructions
# should have made a emun oopsie lol
@onready var text_edit = $ColorRect/TextEdit

func _process(delta):
	match what_sheet:
		0:
			if Global.reset_notes:
				$LineEdit2.text = ""
				$LineEdit3.text = ""
				$LineEdit4.text = ""
				$LineEdit5.text = ""
				Global.reset_notes = false
				if Global.what_level_are_we == 5:
					$LineEdit2.text = "I hate my life"
					$LineEdit3.text = "fuck my boss haha"
					$LineEdit4.text = "jokes on him, my"
					$LineEdit5.text = "wife his sister"
		1:
			match Global.what_level_are_we:
				1:
					$LineEdit2.text = "Hello Me Boss"
					$LineEdit3.text = "Bossie want codes"
					$LineEdit4.text = "DO it now, on back"
					$LineEdit5.text = "Follow or else"
				2:
					$LineEdit2.text = "This no good"
					$LineEdit3.text = "again, no satisfy"
					$LineEdit4.text = "you make so easy "
					$LineEdit5.text = "ANOTHER or else"
				3:
					$LineEdit2.text = "AGAIN AGAIN AGAIN"
					$LineEdit3.text = "ME NOT SATISFIED"
					$LineEdit4.text = "AGAIN AGAIN AGAIN AGAIN"
					$LineEdit5.text = "AHHH NEED CODES"
				4:
					$LineEdit2.text = "NOT GOOD ENOUGH"
					$LineEdit3.text = "NOT GOOD ENOUGH"
					$LineEdit4.text = "NOT GOOD ENOUGH"
					$LineEdit5.text = "NOT GOOD ENOUGH!!!!!"
				5:
					$LineEdit2.text = "Thanks for playing"
					$LineEdit3.text = "Game by:"
					$LineEdit4.text = "Sabrina Ross"
					$LineEdit5.text = "Have nice day!"
		2:
			match Global.what_level_are_we:
				1:
					
					$"../Intructions Page/LineEdit2".text = "A = 2 * B"
					$"../Intructions Page/LineEdit3".text = "B % 3 = 0"
					$"../Intructions Page/LineEdit4".text = "C = A + 1"
					$"../Intructions Page/LineEdit5".text = "D % 3 = 0,    E % B = 2"
				2:
					$"../Intructions Page/LineEdit2".text = "A = floor(B / 2) , B % 3 = 0"
					$"../Intructions Page/LineEdit3".text = "A ≠ √(3^2 + 4^2) - |√(13^2 - 12^2)|"
					$"../Intructions Page/LineEdit4".text = "C == A + 1 , D % 3 == 0"
					$"../Intructions Page/LineEdit5".text = "E = det( ( A , C ) , ( B , D ) )"
				3:
					$"../Intructions Page/LineEdit2".text = "A = 2 , B * E = 28"
					$"../Intructions Page/LineEdit3".text = "D = max(A, B, C) - min(A, B, C)"
					$"../Intructions Page/LineEdit4".text = "B / A = C / B"
					$"../Intructions Page/LineEdit5".text = "(A + B + C + D + E) % 9 = 0"
				4:
					$"../Intructions Page/LineEdit2".text = "A = det( ( A , C ) , ( E , D ) ) "
					$"../Intructions Page/LineEdit3".text = "B = A + E , C < D"
					$"../Intructions Page/LineEdit4".text = "A + B + C + D + E = 21"
					$"../Intructions Page/LineEdit5".text = "D = ((D−1)! − 1_digit_prime_num) , C % A = 1"
				5:
					$"../Intructions Page/LineEdit2".text = "comment on game"
					$"../Intructions Page/LineEdit3".text = "paypal me money"
					$"../Intructions Page/LineEdit4".text = "drop out of college"
					$"../Intructions Page/LineEdit5".text = "follow my youtube: @SabrinaRoss6502"
