extends CanvasLayer

var score_left = 0
var score_right = 0

func _ready():
	$score_l.text = '0'
	$score_r.text = '0'

func add_score_left():
	score_left += 1
	$score_l.text = str(score_left)

func add_score_right():
	score_right += 1
	$score_r.text = str(score_right)
