extends Node2D

var score = 0
var mushrooms = 0
@onready var score_label: Label = %ScoreLabel

func add_point():
	score += 1
	score_label.text = "Score: " + str(score)
	print(score)
	
func add_mushroom():
	mushrooms += 1
	print('funghi: ', mushrooms)
